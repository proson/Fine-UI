using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class textbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnReset.OnClientClick = SimpleForm1.GetResetReference();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            labResult.Text = "用户名：" + tbxUseraName.Text + " 密码：" + tbxPassword.Text;
        }
    }
}
