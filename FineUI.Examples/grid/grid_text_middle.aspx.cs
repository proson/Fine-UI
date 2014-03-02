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
    public partial class grid_text_middle : PageBase
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



    }
}
