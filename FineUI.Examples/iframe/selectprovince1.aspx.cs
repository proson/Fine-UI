using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class selectprovince1 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSheng();

                Button1.OnClientClick = Window1.GetShowReference("./selectprovince1_child.aspx");
            }

        }


        private void BindSheng()
        {
            ddlSheng.DataSource = SHENG_JSON;
            ddlSheng.DataBind();

            ddlSheng.Items.Insert(0, new ListItem("选择省份", "-1"));
        }

    }
}
