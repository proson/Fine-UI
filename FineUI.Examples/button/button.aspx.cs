using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnChangeEnable_Click(object sender, EventArgs e)
        {
            btnEnable.Enabled = true;
            btnEnable.Text = "本按钮已经启用（点击弹出对话框）";
        }

        protected void btnEnable_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("你点击了刚刚启用的按钮");
        }


        protected void btnTooltip_Click(object sender, EventArgs e)
        {
            btnTooltip.ToolTip = "这是改变后的提示信息";
        }


        protected void btnChangePressed_Click(object sender, EventArgs e)
        {
            btnPressed.Pressed = !btnPressed.Pressed;
        }


        

       


    }
}
