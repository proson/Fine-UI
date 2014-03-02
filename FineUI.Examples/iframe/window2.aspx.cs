using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class window2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("./window2_iframe.aspx");

                btnClose.OnClientClick = Window1.GetConfirmHideReference();

                btnClosePostBack.OnClientClick = Window1.GetIFrameCustomEventReference("SAVE", true);
            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();

        }



    }
}
