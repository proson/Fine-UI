using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_rownumber_width : PageBase
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
            int recordCount = 999;

            // 1.设置总项数（特别注意：数据库分页一定要设置总记录数RecordCount）
            Grid1.RecordCount = recordCount;

            // 2.获取当前分页数据
            DataTable table = GetPagedDataTable(Grid1.PageIndex, Grid1.PageSize, recordCount);

            // 3.绑定到Grid
            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        /// <summary>
        /// 模拟数据库分页
        /// </summary>
        /// <returns></returns>
        private DataTable GetPagedDataTable(int pageIndex, int pageSize, int recordCount)
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Id", typeof(int)));
            table.Columns.Add(new DataColumn("EntranceTime", typeof(DateTime)));

            DataRow row = null;

            for (int i = pageIndex * pageSize, count = Math.Min(recordCount, pageIndex * pageSize + pageSize); i < count; i++)
            {
                row = table.NewRow();
                row[0] = 1000 + i;
                row[1] = DateTime.Now.AddSeconds(i);
                table.Rows.Add(row);
            }

            return table;
        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }


        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;

            BindGrid();
        }

        #endregion

    }
}
