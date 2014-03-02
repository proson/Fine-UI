using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class confirm_cancel2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnOperation.OnClientClick = Confirm.GetShowReference("确认执行操作？", 
                    String.Empty, 
                    MessageBoxIcon.Question, 
                    PageManager1.GetCustomEventReference("Confirm_OK"),
                    PageManager1.GetCustomEventReference("Confirm_Cancel"));
            }
        }


        protected void PageManager1_CustomEvent(object sender, CustomEventArgs e)
        {
            if (e.EventArgument == "Confirm_OK")
            {
                Alert.Show("执行了确定操作！");
            }
            else if (e.EventArgument == "Confirm_Cancel")
            {
                Alert.Show("执行了取消操作！");
            }
        }

    }
}
