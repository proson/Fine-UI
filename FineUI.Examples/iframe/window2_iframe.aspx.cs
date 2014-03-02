using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class window2_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            //else
            //{
            //    string eventArgument = GetRequestEventArgument();
            //    if (eventArgument.StartsWith("SAVE"))
            //    {
            //        SaveAndClose();
            //    }
            //}
        }


        protected void SaveAndClose()
        {
            // 首先保存数据

            // 然后关闭本窗体
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference());
        }

        protected void PageManager1_CustomEvent(object sender, CustomEventArgs e)
        {
            if (e.EventArgument == "SAVE")
            {
                SaveAndClose();
            }
        }
    }
}
