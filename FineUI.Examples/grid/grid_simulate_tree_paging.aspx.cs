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
    public partial class grid_simulate_tree_paging : PageBase
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
            DataTable table = IniGrid();

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

        private DataTable IniGrid()
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

            DataRow row = null;
            String group = String.Empty;
            foreach (string sheng in SHENG_JSON)
            {
                group = GenerateNextGroup().ToString();

                row = table.NewRow();
                row[0] = GenerateNextID();
                row[1] = sheng;
                row[2] = group;
                row[3] = 0;
                table.Rows.Add(row);

                foreach (string shi in SHI_JSON[sheng])
                {
                    row = table.NewRow();
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


            return table;
        }

        #endregion

        #region Events

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
        }

        #endregion

    }
}
