using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class window : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnShowInClient.OnClientClick = Window2.GetShowReference();
                btnHideInClient.OnClientClick = Window2.GetHideReference();
                btnHideInClient2.OnClientClick = Window2.GetHidePostBackReference("btnHideInClient2");

                //PageContext.RegisterStartupScript(Window2.GetShowReference(300, 300));

                PageContext.RegisterStartupScript(Window2.GetShowReference() + Window2.GetMaximizeReference());

            }
        }


        protected void btnShowInServer_Click(object sender, EventArgs e)
        {
            Window2.Hidden = false;
        }

        protected void btnHideInServer_Click(object sender, EventArgs e)
        {
            Window2.Hidden = true;
        }

        protected void Window2_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("窗体被关闭了。参数：" + e.CloseArgument);
        }


    }
}
