using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class triggerbox_iframe_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string param1 = Request.QueryString["param1"];

                if (!String.IsNullOrEmpty(param1))
                {
                    TextBox1.Text = param1;
                }

                btnClose.OnClientClick = ActiveWindow.GetHideReference();
            }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(ActiveWindow.GetWriteBackValueReference(TextBox1.Text, TextBox1.Text + " - 第二个值") + ActiveWindow.GetHideReference());
        }

        protected void btnClosePostBack_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference());
        }
    }
}
