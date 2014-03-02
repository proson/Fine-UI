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
    public partial class grid_simulate_tree_database_paging_dropdownlist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindShengList();

                BindGrid();

            }
        }

        #region BindShengList
        private void BindShengList()
        {
            ddlSheng.DataSource = SHENG_JSON;
            ddlSheng.DataBind();

            ddlSheng.Items.Insert(0, new ListItem("--选择省份--", "-1"));
            ddlSheng.SelectedValue = "-1";
        }

        #endregion

        #region BindGrid
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

        private int idGenerator = 100;
        private int GenerateNextID()
        {
            return idGenerator++;
        }

        private int groupGenerator = 0;
        private int GenerateNextGroup()
        {
            groupGenerator++;
            if (groupGenerator > 20)
            {
                groupGenerator = 1;
            }
            return groupGenerator;
        }

        /// <summary>
        /// 模拟返回总项数
        /// </summary>
        /// <returns></returns>
        private int GetTotalCount()
        {
            if (ddlSheng.SelectedValue == "-1")
            {
                return SHENG_JSON.Count;
            }
            else
            {
                return 1;
            }
        }

        private DataTable GetPagedDataTable(int pageIndex, int pageSize)
        {
            DataTable table = new DataTable();
            DataColumn column1 = new DataColumn("Id", typeof(int));
            DataColumn column2 = new DataColumn("Name", typeof(String));
            DataColumn column3 = new DataColumn("Group", typeof(String));
            DataColumn column4 = new DataColumn("TreeLevel", typeof(int));
            table.Columns.Add(column1);
            table.Columns.Add(column2);
            table.Columns.Add(column3);
            table.Columns.Add(column4);

            if (ddlSheng.SelectedValue == "-1")
            {
                int rowbegin = pageIndex * pageSize;
                int rowend = (pageIndex + 1) * pageSize;
                if (rowend > SHENG_JSON.Count)
                {
                    rowend = SHENG_JSON.Count;
                }

                for (int i = rowbegin; i < rowend; i++)
                {
                    string sheng = SHENG_JSON[i].Value<string>();

                    string group = GenerateNextGroup().ToString();

                    DataRow row = table.NewRow();
                    row[0] = GenerateNextID();
                    row[1] = sheng;
                    row[2] = group;
                    row[3] = 0;
                    table.Rows.Add(row);

                    AddShiRows(table, group, sheng);

                }
            }
            else
            {
                string sheng = ddlSheng.SelectedValue;

                string group = GenerateNextGroup().ToString();

                DataRow row = table.NewRow();
                row[0] = GenerateNextID();
                row[1] = sheng;
                row[2] = group;
                row[3] = 0;
                table.Rows.Add(row);

                AddShiRows(table, group, sheng);
            }

            return table;
        }

        private void AddShiRows(DataTable table, String group, string sheng)
        {
            foreach (string shi in SHI_JSON[sheng])
            {
                DataRow row = table.NewRow();
                row[0] = GenerateNextID();
                row[1] = shi;
                row[2] = group;
                row[3] = 1;
                table.Rows.Add(row);

                JArray xianArray = (JArray)XIAN_JSON[shi];
                if (xianArray != null)
                {
                    foreach (string xian in xianArray)
                    {
                        row = table.NewRow();
                        row[0] = GenerateNextID();
                        row[1] = xian;
                        row[2] = group;
                        row[3] = 2;
                        table.Rows.Add(row);

                    }
                }

            }
        }

        #endregion

        #region Events

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;

            BindGrid();
        }

        protected void ddlSheng_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid1.PageIndex = 0;

            BindGrid();
        }

        #endregion

    }
}
