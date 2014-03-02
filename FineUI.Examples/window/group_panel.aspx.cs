using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class group_panel : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GroupPanel2.Expanded = !GroupPanel2.Expanded;
        }
    }
}
