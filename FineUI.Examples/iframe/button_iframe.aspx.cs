using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class button_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("../grid/grid_iframe_window.aspx", "弹出窗口一");
                Button2.OnClientClick = Window2.GetShowReference("../grid/grid_iframe_window.aspx", "弹出窗口二");

            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }


        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("Window1被关闭了！");
        }

        protected void Window2_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("Window2被关闭了！");
        }


    }
}
