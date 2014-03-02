using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class confirm_cancel : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnOperation2.OnClientClick = Confirm.GetShowReference("确认执行操作二？", String.Empty, MessageBoxIcon.Question, btnOperation2.GetPostBackEventReference(), String.Empty);

                btnOperation3.OnClientClick = Confirm.GetShowReference("确认执行操作三？", String.Empty, MessageBoxIcon.Question, btnOperation3.GetPostBackEventReference(), btnOperation3.GetPostBackEventReference("Cancel"));
            }
        }

        protected void btnOperation1_Click(object sender, EventArgs e)
        {
            Alert.Show("执行了操作一！");
        }

        protected void btnOperation2_Click(object sender, EventArgs e)
        {
            Alert.Show("执行了操作二！");
        }


        protected void btnOperation3_Click(object sender, EventArgs e)
        {
            if (GetRequestEventArgument() == "Cancel")
            {
                Alert.Show("取消执行操作三！");
            }
            else
            {
                Alert.Show("执行了操作三！");
            }
            
        }

    }
}
