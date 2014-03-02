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
    public partial class grid_empty_text : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["EMPTY_DATA_SOURCE"] = true;

                Grid1.EmptyText = String.Format("<img src=\"{0}\" alt=\"No Data Found!\"/>", ResolveUrl("~/images/no_data_found.jpg"));

            }
        }


        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable table;
            if (Convert.ToBoolean(ViewState["EMPTY_DATA_SOURCE"]))
            {
                ViewState["EMPTY_DATA_SOURCE"] = false;
                table = GetDataTable();
            }
            else
            {
                ViewState["EMPTY_DATA_SOURCE"] = true;
                table = null;
            }

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

    }
}
