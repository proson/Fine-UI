#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    GridRow.cs
 * CreatedOn:   2008-05-19
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Data;
using System.Reflection;
using System.ComponentModel;
using System.Web.UI;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

using Newtonsoft.Json.Linq;
using System.Collections.ObjectModel;

namespace FineUI
{
    /// <summary>
    /// 表格行
    /// </summary>
    [ToolboxItem(false)]
    public class GridRow // : WebControl
    {
        #region Constructor

        /// <summary>
        /// 构造函数
        /// </summary>
        public GridRow()
        {

        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="grid">表格实例</param>
        /// <param name="dataItem">行对应的数据源（在回发时为null）</param>
        /// <param name="rowIndex">行序号</param>
        public GridRow(Grid grid, object dataItem, int rowIndex)
        {
            _grid = grid;
            _dataItem = dataItem;
            _rowIndex = rowIndex;
        }

        #endregion

        #region Grid/DataItem/RowIndex

        private Grid _grid;

        /// <summary>
        /// 表格实例
        /// </summary>
        public Grid Grid
        {
            get
            {
                return _grid;
            }
        }

        private object _dataItem = null;

        /// <summary>
        /// 本行对应的数据源（不维护状态）
        /// </summary>
        public object DataItem
        {
            get { return _dataItem; }
            set { _dataItem = value; }
        }


        private int _rowIndex = 0;

        /// <summary>
        /// 第几行
        /// </summary>
        public int RowIndex
        {
            get
            {
                return _rowIndex;
            }
            set
            {
                _rowIndex = value;
            }
        }


        #endregion

        #region Properties

        private string[] _values = null;

        /// <summary>
        /// 此行的状态信息
        /// </summary>
        public string[] Values
        {
            get
            {
                return _values;
            }
            set
            {
                _values = value;
            }
        }

        private object[] _dataKeys = null;

        /// <summary>
        /// 此行DataKeyNames字段的值
        /// </summary>
        public object[] DataKeys
        {
            get
            {
                return _dataKeys;
            }
            set
            {
                _dataKeys = value;
            }
        }

        private object[] _states = null;

        /// <summary>
        /// 非公开属性，对于CheckBoxField可以通过GetCheckedState访问
        /// </summary>
        internal object[] States
        {
            get
            {
                return _states;
            }
            set
            {
                _states = value;
            }
        }

        //private object[] _extraValues = null;
        ///// <summary>
        ///// 附加要保存的值（比如CheckBoxField需要保存是否选中的状态）
        ///// </summary>
        //internal object[] ExtraValues
        //{
        //    get
        //    {
        //        return _extraValues;
        //    }
        //    set
        //    {
        //        _extraValues = value;
        //    }
        //}

        #endregion

        #region ToShortStates/FromShortStates

        /// <summary>
        /// 当前行列状态列表
        /// </summary>
        /// <returns></returns>
        internal object[] ToShortStates()
        {
            List<object> shortStates = new List<object>();
            Collection<GridColumn> columns = _grid.AllColumns;
            for (int i = 0, count = columns.Count; i < count; i++)
            {
                if (columns[i].PersistState)
                {
                    shortStates.Add(States[i]);
                }
            }
            return shortStates.ToArray();
        }

        /// <summary>
        /// 恢复当前行列状态列表（同时更新相应的Values值）
        /// </summary>
        /// <param name="shortStates"></param>
        internal void FromShortStates(object[] shortStates)
        {
            Collection<GridColumn> columns = _grid.AllColumns;
            States = new object[columns.Count];
            int shortStateIndex = 0;
            for (int i = 0, count = columns.Count; i < count; i++)
            {
                GridColumn column = columns[i];
                if (column.PersistState)
                {
                    object state = shortStates[shortStateIndex++];
                    if (state is JValue)
                    {
                        States[i] = (state as JValue).Value;
                    }
                    else
                    {
                        States[i] = state;
                    }


                    UpdateValuesAt(i);
                }
            }
        }


        /// <summary>
        /// 更新当前行某列的渲染后的HTML
        /// </summary>
        /// <param name="columnIndex"></param>
        internal void UpdateValuesAt(int columnIndex)
        {
            Values[columnIndex] = RemoveNewLine(_grid.AllColumns[columnIndex].GetColumnValue(this));
        }

        #endregion

        #region TemplateContainers


        private GridRowControl[] _templateContainers = null;
        
        /// <summary>
        /// 表格行中模板列控件列表，一个典型的例子为：[GridRowControl, null, null, GridRowControl, null, null, null, null, null]
        /// </summary>
        public GridRowControl[] TemplateContainers
        {
            get
            {
                return _templateContainers;
            }
            set
            {
                _templateContainers = value;
            }
        }

        /// <summary>
        /// 表格行中模板列控件列表（数据绑定时自动生成每个模板列控件ID，回发时从FState中回发模板列控件ID）
        /// </summary>
        public void InitTemplateContainers()
        {
            Collection<GridColumn> columns = _grid.AllColumns;
            TemplateContainers = new GridRowControl[columns.Count];

            for (int i = 0, count = columns.Count; i < count; i++)
            {
                GridColumn column = columns[i];
                if (column is TemplateField)
                {
                    TemplateField field = column as TemplateField;
                    GridRowControl control = new GridRowControl(DataItem, RowIndex);
                    

                    // 不用指定ID，会自动生成类似 ct123 的唯一ID
                    //control.ID = String.Format("c{0}r{1}", column.ColumnIndex, RowIndex);

                    if (DataItem == null)
                    {
                        // 回发时恢复FState阶段（非数据绑定阶段），从Values中读取模板列的服务器ID（在第一次加载时自动生成的）
                        string fieldValue = Values[i];
                        if (fieldValue.StartsWith(Grid.TEMPLATE_PLACEHOLDER_PREFIX))
                        {
                            control.ID = fieldValue.Substring(Grid.TEMPLATE_PLACEHOLDER_PREFIX.Length);
                        }
                    }

                    

                    field.ItemTemplate.InstantiateIn(control);

                    _grid.Controls.Add(control);
                    TemplateContainers[column.ColumnIndex] = control;


                }

            }
        }

        #endregion

        #region DataBindRow

        ///// <summary>
        ///// 绑定子控件
        ///// </summary>
        //protected override void DataBindChildren()
        //{
        //    base.DataBindChildren();

        //    DataBindRow();
        //}

        /// <summary>
        /// 绑定行的值
        /// </summary>
        internal void DataBindRow()
        {
            foreach (GridRowControl tplCtrl in TemplateContainers)
            {
                if (tplCtrl != null)
                {
                    tplCtrl.DataBind();
                }
            }


            Collection<GridColumn> columns = _grid.AllColumns;

            // 计算每列的值
            Values = new string[columns.Count];
            States = new object[columns.Count];

            for (int i = 0, count = columns.Count; i < count; i++)
            {
                GridColumn column = columns[i];
                Values[i] = RemoveNewLine(column.GetColumnValue(this));

                if (column.PersistState)
                {
                    States[i] = column.GetColumnState(this);
                }
            }

            // 计算DataKeys的值
            if (_grid.DataKeyNames != null)
            {
                string[] keyNames = _grid.DataKeyNames;
                DataKeys = new object[keyNames.Length];
                for (int j = 0, count = keyNames.Length; j < count; j++)
                {
                    DataKeys[j] = GetPropertyValue(keyNames[j]);
                }
            }
        }


        internal object GetPropertyValue(string propertyName)
        {
            return ObjectUtil.GetPropertyValue(DataItem, propertyName);
        }

        private string RemoveNewLine(string columnValue)
        {
            // 删除生成HTML中的 "\r\n     "
            return Regex.Replace(columnValue, "\r?\n\\s*", "");
        }

        #endregion

        #region FindControl

        /// <summary>
        /// 查找表格行内的控件
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Control FindControl(string id)
        {
            foreach (GridRowControl control in TemplateContainers)
            {
                if (control != null)
                {
                    Control found;
                    if (control.ID == id)
                    {
                        found = control;
                    }
                    else
                    {
                        found = control.FindControl(id);
                    }

                    if (found != null)
                    {
                        return found;
                    }
                }
            }

            return null;
        }

        #endregion

        #region old code

        ///// <summary>
        ///// 取得属性的值
        ///// </summary>
        ///// <param name="rowObj"></param>
        ///// <param name="propertyName"></param>
        ///// <returns></returns>
        //public object GetPropertyValue(string propertyName)
        //{
        //    object rowObj = _dataItem;
        //    object result = null;

        //    try
        //    {
        //        if (rowObj is DataRow)
        //        {
        //            result = (rowObj as DataRow)[propertyName];
        //        }
        //        else
        //        {
        //            result = ObjectUtil.GetPropertyValueFormObject(rowObj, propertyName);
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        // 找不到此属性
        //    }

        //    return result;
        //}




        #endregion

        #region old code

        ///// <summary>
        ///// Returns a value from the item indexed by the field name or index.
        ///// </summary>
        ///// <param name="obj">Field name or numeric index.</param>
        ///// <returns>Cell value</returns>
        //public object this[object obj]
        //{
        //    get
        //    {
        //        if (obj is string)
        //        {
        //            if (_columns != null && _values != null)
        //            {
        //                int iColumnIndex = _columns.IndexOf((string)obj);
        //                if (iColumnIndex >= 0)
        //                {
        //                    return _values[iColumnIndex];
        //                }
        //                else
        //                {
        //                    return null;
        //                }
        //            }
        //            else
        //            {
        //                return null;
        //            }
        //        }
        //        else if (obj is int)
        //        {
        //            return _values[(int)obj];
        //        }
        //        else
        //        {
        //            throw new ArgumentException("Only a string (field name) or integer index is permitted.");
        //        }
        //    }
        //    set
        //    {
        //        if (obj is string)
        //        {
        //            if (_columns != null && _values != null)
        //            {
        //                _values[_columns.IndexOf((string)obj)] = value;
        //            }
        //        }
        //        else if (obj is int)
        //        {
        //            _values[(int)obj] = value;
        //        }
        //        else
        //        {
        //            throw new ArgumentException("Only a string (column name) or int parameter are permitted.");
        //        }
        //    }
        //}



        ///// <summary>
        ///// Returns whether this item equals the passed-in item.
        ///// </summary>
        ///// <param name="o">A GridItem.</param>
        ///// <returns>Whether this item equals the passed-in item.</returns>
        //public override bool Equals(object o)
        //{
        //    if (o is GridItem && o != null)
        //    {
        //        GridItem other = (GridItem)o;

        //        for (int i = 0; i < _values.Length; i++)
        //        {
        //            if (!Object.Equals(this[i], other[i]))
        //            {
        //                return false;
        //            }
        //        }

        //        return true;
        //    }

        //    return false;
        //} 

        #endregion

    }
}



