
#region Comment

/*
 * Project��    FineUI
 * 
 * FileName:    GridAfterEditEventArgs.cs
 * CreatedOn:   2013-07-28
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description��
 *      ->
 *   
 * History��
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
    /// ����е���¼�����
    /// </summary>
    public class GridAfterEditEventArgs : EventArgs
    {

        private int _rowIndex;

        /// <summary>
        /// ������
        /// </summary>
        public int RowIndex
        {
            get { return _rowIndex; }
            set { _rowIndex = value; }
        }

        private string _columnID;

        /// <summary>
        /// ��ID
        /// </summary>
        public string ColumnID
        {
            get { return _columnID; }
            set { _columnID = value; }
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        /// <param name="rowIndex">������</param>
        /// /// <param name="columnID">��ID</param>
        public GridAfterEditEventArgs(int rowIndex, string columnID)
        {
            _rowIndex = rowIndex;
            _columnID = columnID;
        }

    }
}



