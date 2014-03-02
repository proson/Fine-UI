using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class form_hide_field : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnSubmitForm2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单验证并提交成功！");
        }


        protected void btnShowHideLiuShuiHao_Click(object sender, EventArgs e)
        {
            labLiuShuiHao.Hidden = !labLiuShuiHao.Hidden;
        }

        protected void btnShowHideTitle_Click(object sender, EventArgs e)
        {
            labTitle.Hidden = !labTitle.Hidden;
        }

        
    }
}
