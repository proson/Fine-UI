using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class numberbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 显示为“11111111111111112”，参考：http://fineui.com/bbs/forum.php?mod=viewthread&tid=2911
                // NumberBox3.Text = "11111111111111111";
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单验证成功");
        }

    }
}
