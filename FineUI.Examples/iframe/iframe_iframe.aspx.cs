using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class iframe_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("./iframe_iframe_window1.aspx");

                Button2.OnClientClick = Window2.GetShowReference("./iframe_iframe_window1.aspx");
            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();

        }



    }
}
