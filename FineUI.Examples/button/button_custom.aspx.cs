using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button_custom : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("点击了普通按钮");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("点击了自定义按钮");
        }


    }
}
