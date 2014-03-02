using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button_icon : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCustomIcon_Click(object sender, EventArgs e)
        {
            btnCustomIcon.IconUrl = "~/images/16/8.png";
        }
    }
}
