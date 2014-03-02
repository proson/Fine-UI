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
    public partial class grid_twogrid : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid2();

                BindGrid1();
            }
        }

        #region BindGrid2/BindGrid1

        private void BindGrid2()
        {
            Grid2.DataSource = GetClassDataTable();
            Grid2.DataBind();

            Grid2.SelectedRowIndex = 0;
        }

        private void BindGrid1()
        {
            if (Grid2.SelectedRowIndex < 0)
            {
                return;
            }

            int classId = Convert.ToInt32(Grid2.DataKeys[Grid2.SelectedRowIndex][0]);

            DataTable table = null;
            if (classId == 101)
            {
                table = GetDataTable();
            }
            else
            {
                table = GetDataTable2();
            }

            Grid1.DataSource = table;
            Grid1.DataBind();

            UpdateClassDesc(classId);
        }

        private void UpdateClassDesc(int classId)
        {
            foreach (DataRow row in GetClassDataTable().Rows)
            {
                int currentClassId = (int)row["Id"];
                if (classId == currentClassId)
                {
                    labelClassDesc.Text = row["Desc"].ToString();
                    break;
                }
            }
        }

        #endregion

        #region Events

        protected void Grid2_RowSelect(object sender, FineUI.GridRowSelectEventArgs e)
        {
            BindGrid1();
        }

       

        #endregion

    }
}
