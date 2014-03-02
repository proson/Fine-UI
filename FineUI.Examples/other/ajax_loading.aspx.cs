using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class ajax_loading : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
        }
    }
}