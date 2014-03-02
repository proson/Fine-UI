using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class label : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnChangeEnable_Click(object sender, EventArgs e)
        {
            Label3.Enabled = !Label3.Enabled;
        }

    }
}
