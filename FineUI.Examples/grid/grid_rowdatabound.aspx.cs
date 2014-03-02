using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_rowdatabound : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

            }
        }

        #region BindGrid

        private void BindGrid()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        /// <summary>
        /// 这个事件会在渲染每一行后调用，此时 Values 属性保存了每一项渲染后的 HTML 片段
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Grid1_RowDataBound(object sender, FineUI.GridRowEventArgs e)
        {
            // e.DataItem  -> System.Data.DataRowView 或者自定义类
            // e.RowIndex -> 当前行序号（从 0 开始）
            // e.Values -> 当前行每一列渲染后的 HTML 片段
            
            //object a = Grid1.DataKeys[e.RowIndex][0];

            DataRowView row = e.DataItem as DataRowView;
            if (row != null)
            {
                e.Values[4] = String.Format("{0} ({1})", e.Values[4], row["EntranceYear"]);
            }
        }

        protected void Grid1_RowCommand(object sender, FineUI.GridCommandEventArgs e)
        {
            if (e.CommandName == "Action1" || e.CommandName == "Action2")
            {
                labResult.Text = String.Format("你点击了第 {0} 行，第 {1} 列，行命令是 {2}", e.RowIndex + 1, e.ColumnIndex + 1, e.CommandName);
            }
        }

        #endregion

    }
}
