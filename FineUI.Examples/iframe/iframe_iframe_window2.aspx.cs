using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class iframe_iframe_window2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnClosePostBack.OnClientClick = ActiveWindow.GetHidePostBackReference();
            }


        }


        protected void btnPostBackClosePostBack_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference());
        }
    }
}
