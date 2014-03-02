using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

using Newtonsoft.Json.Linq;

namespace FineUI.Examples.grid
{
    public partial class grid_summary_serverside : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

                OutputSummaryData();
            }
        }

        #region BindGrid

        private void OutputSummaryData()
        {
            DataTable source = GetDataTable2();

            float donateTotal = 0.0f;
            float feeTotal = 0.0f;
            foreach (DataRow row in source.Rows)
            {
                donateTotal += Convert.ToInt32(row["Donate"]);
                feeTotal += Convert.ToInt32(row["Fee"]);
            }

            JObject jo = new JObject();
            jo.Add("donateTotal", donateTotal);
            jo.Add("feeTotal", feeTotal);

            hfGrid1Summary.Text = jo.ToString(Newtonsoft.Json.Formatting.None);

        }

        private void BindGrid()
        {
            // 1.设置总项数（特别注意：数据库分页一定要设置总记录数RecordCount）
            Grid1.RecordCount = GetTotalCount();

            // 2.获取当前分页数据
            DataTable table = GetPagedDataTable(Grid1.PageIndex, Grid1.PageSize);

            // 3.绑定到Grid
            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        
        /// <summary>
        /// 模拟返回总项数
        /// </summary>
        /// <returns></returns>
        private int GetTotalCount()
        {
            return GetDataTable2().Rows.Count;
        }

        /// <summary>
        /// 模拟数据库分页
        /// </summary>
        /// <returns></returns>
        private DataTable GetPagedDataTable(int pageIndex, int pageSize)
        {
            DataTable source = GetDataTable2();

            DataTable paged = source.Clone();

            int rowbegin = pageIndex * pageSize;
            int rowend = (pageIndex + 1) * pageSize;
            if (rowend > source.Rows.Count)
            {
                rowend = source.Rows.Count;
            }

            for (int i = rowbegin; i < rowend; i++)
            {
                paged.ImportRow(source.Rows[i]);
            }

            return paged;
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
