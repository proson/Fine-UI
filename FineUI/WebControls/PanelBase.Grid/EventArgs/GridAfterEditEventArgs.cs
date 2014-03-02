
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    GridAfterEditEventArgs.cs
 * CreatedOn:   2013-07-28
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


namespace FineUI
{
    /// <summary>
    /// 表格行点击事件参数
    /// </summary>
    public class GridAfterEditEventArgs : EventArgs
    {

        private int _rowIndex;

        /// <summary>
        /// 行索引
        /// </summary>
        public int RowIndex
        {
            get { return _rowIndex; }
            set { _rowIndex = value; }
        }

        private string _columnID;

        /// <summary>
        /// 列ID
        /// </summary>
        public string ColumnID
        {
            get { return _columnID; }
            set { _columnID = value; }
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="rowIndex">行索引</param>
        /// /// <param name="columnID">列ID</param>
        public GridAfterEditEventArgs(int rowIndex, string columnID)
        {
            _rowIndex = rowIndex;
            _columnID = columnID;
        }

    }
}



