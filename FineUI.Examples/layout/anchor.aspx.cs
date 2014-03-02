using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.layout
{
    public partial class anchor : PageBase
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


            Grid2.DataSource = table;
            Grid2.DataBind();

            Grid3.DataSource = table;
            Grid3.DataBind();
        }

        #endregion

    }
}
