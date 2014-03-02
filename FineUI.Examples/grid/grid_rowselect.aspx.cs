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
    public partial class grid_rowselect : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        #region LoadData

        private void LoadData()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events


        protected void Grid1_RowSelect(object sender, FineUI.GridRowSelectEventArgs e)
        {
            Alert.ShowInTop(String.Format("你选中了第 {0} 行", e.RowIndex + 1));
        }

        #endregion


    }
}
