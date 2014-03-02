
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    RenderBaseField.cs
 * CreatedOn:   2013-05-18
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
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Text;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Data;
using System.Reflection;
using System.Web.UI.WebControls;


namespace FineUI
{
    /// <summary>
    /// 表格可编辑列的基类
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public abstract class RenderBaseField : GridColumn
    {
        #region Properties


        private string _dataField = String.Empty;

        /// <summary>
        /// 字段名称
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("字段名称")]
        public string DataField
        {
            get
            {
                return _dataField;
            }
            set
            {
                _dataField = value;
            }
        }

        #endregion


    }
}



