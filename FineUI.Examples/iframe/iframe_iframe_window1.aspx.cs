using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class iframe_iframe_window1 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("./iframe_iframe_window2.aspx");
                Button2.OnClientClick = Window2.GetShowReference("./iframe_iframe_window2.aspx");
            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }


        protected void btnPostBackClose_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(FineUI.ActiveWindow.GetHidePostBackReference());
        }
    }
}
