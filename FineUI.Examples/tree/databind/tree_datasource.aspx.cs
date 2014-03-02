using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using System.Xml;

namespace FineUI.Examples.tree.databind
{
    public partial class tree_datasource : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }


        private void LoadData()
        {

            Tree1.DataSource = XmlDataSource1;
            Tree1.DataBind();

        }


    }
}
