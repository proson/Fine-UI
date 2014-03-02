using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class passvalue_iframe_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSheng();
            }
        }

        private void BindSheng()
        {
            ddlSheng.DataSource = SHENG_JSON;
            ddlSheng.DataBind();
        }



        protected void ddlSheng_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSheng.SelectedValue != "-1")
            {
                PageContext.RegisterStartupScript(ActiveWindow.GetWriteBackValueReference(ddlSheng.SelectedValue) + ActiveWindow.GetHideReference());
            }
        }

    }
}
