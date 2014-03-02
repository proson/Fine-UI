using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class parent_postback_top : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }


    }
}
