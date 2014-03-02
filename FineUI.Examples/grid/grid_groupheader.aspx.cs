using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

namespace FineUI.Examples.grid
{
    public partial class grid_groupheader : PageBase
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

            Grid1.DataSource = GetDataTable();
            Grid1.DataBind();
        }

        protected new DataTable GetDataTable()
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Guid", typeof(Guid)));
            table.Columns.Add(new DataColumn("HZData1", typeof(int)));
            table.Columns.Add(new DataColumn("HZData2", typeof(int)));
            table.Columns.Add(new DataColumn("HLData1", typeof(int)));
            table.Columns.Add(new DataColumn("HLData2", typeof(int)));
            table.Columns.Add(new DataColumn("AHData1", typeof(int)));
            table.Columns.Add(new DataColumn("AHData2", typeof(int)));
            table.Columns.Add(new DataColumn("LogTime", typeof(DateTime)));
            

            DataRow row;

            Random rd = new Random();
            for (int i = 0; i < 10; i++)
            {
                row = table.NewRow();
                row[0] = Guid.NewGuid();
                row[1] = rd.Next(1000, 9999);
                row[2] = rd.Next(1000, 9999);
                row[3] = rd.Next(1000, 9999);
                row[4] = rd.Next(1000, 9999);
                row[5] = rd.Next(1000, 9999);
                row[6] = rd.Next(1000, 9999);
                row[7] = DateTime.Parse(String.Format("{0}-09-01", rd.Next(2000, 2014)));

                table.Rows.Add(row);
            }

            return table;
        }
        

        #endregion



    }
}
