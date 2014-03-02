using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class form : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnSubmitForm1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单 1 验证并提交成功！");
        }

        protected void btnSubmitForm2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单 2 验证并提交成功！");
        }

        protected void btnSubmitAll_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单 1 和表单 2 验证并提交成功！");
        }


    }
}
