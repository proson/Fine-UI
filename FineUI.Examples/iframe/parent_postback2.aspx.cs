using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class parent_postback2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }

        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {
            //Button1.Text = "更新时间：" + DateTime.Now.ToLongTimeString();
            PageContext.RegisterStartupScript("parent.__doPostBack('','Test3WindowClose');");
        }
    }
}
