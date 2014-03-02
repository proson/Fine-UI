using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class cssclass : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSwitchClass_Click(object sender, EventArgs e)
        {
            tbxUseraName.CssClass = tbxUseraName.CssClass == "red" ? "blue" : "red";
            tbxPassword.CssClass = tbxPassword.CssClass == "red" ? "blue" : "red";
        }

    }
}