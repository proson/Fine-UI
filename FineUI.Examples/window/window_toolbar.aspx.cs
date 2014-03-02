using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class window_toolbar : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnClose_Click(object sender, EventArgs e)
        {
            Window2.Hidden = true;
        }

        protected void btnChangeContent_Click(object sender, EventArgs e)
        {
            labWindowContent.Text = String.Format("这是窗体的内容（{0}）", DateTime.Now.ToLongTimeString());
        }

    }
}
