using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class form_center_button : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnResetForm1.OnClientClick = Form1.GetResetReference();
                
            }
        }

        protected void btnSubmitForm1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单验证并提交成功！");
        }



    }
}
