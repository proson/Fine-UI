using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button_linkbutton : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LinkButton2.OnClientClick = Alert.GetShowInTopReference("这是在服务器端生成的客户端事件");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("这是服务器端事件");
        }

        protected void btnChangeEnable_Click(object sender, EventArgs e)
        {
            LinkButton1.Enabled = !LinkButton1.Enabled;
        }

    }
}
