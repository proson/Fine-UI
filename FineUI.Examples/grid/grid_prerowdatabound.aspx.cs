using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_prerowdatabound : PageBase
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
        /// 这个事件会在渲染每一行前调用，因此改变了列的属性，那么渲染每一行时此列的属性都发生了变化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Grid1_PreRowDataBound(object sender, FineUI.GridPreRowEventArgs e)
        {
            LinkButtonField lbfAction1 = Grid1.FindColumn("lbfAction1") as LinkButtonField;
            LinkButtonField lbfAction2 = Grid1.FindColumn("lbfAction2") as LinkButtonField;
            CheckBoxField cbxAtSchool = Grid1.FindColumn("cbxAtSchool") as CheckBoxField;
            HyperLinkField linkField = Grid1.FindColumn("hlMajor") as HyperLinkField;

            if (e.RowIndex < 5)
            {
                cbxAtSchool.Enabled = true;
                lbfAction1.Enabled = true;
                lbfAction2.Enabled = true;
                linkField.Enabled = true;
            }
            else
            {
                cbxAtSchool.Enabled = false;
                lbfAction1.Enabled = false;
                lbfAction2.Enabled = false;
                linkField.Enabled = false;
            }
            
            // 如果绑定到 DataTable，那么这里的 DataItem 就是 DataRowView
            DataRowView row = e.DataItem as DataRowView;
            if (linkField != null && row != null)
            {
                linkField.DataTextFormatString = "{0} (" + row["EntranceYear"].ToString() + ")";
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
