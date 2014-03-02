using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.other
{
    public partial class timer : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                labServerTime.Text = DateTime.Now.ToString();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            labServerTime.Text = DateTime.Now.ToString();
        }

        protected void btnStartTimer_Click(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
        }

        protected void btnStopTimer_Click(object sender, EventArgs e)
        {
            Timer1.Enabled = false;
        }
    }
}
