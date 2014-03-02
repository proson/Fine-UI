using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FineUI.Examples.usercontrol
{
    public partial class userinfo_dynamic : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Panel1.Controls.Add(CreateANewUserControl());

            UserControlConnector ctrlConnector1 = new UserControlConnector();
            Panel2.Items.Add(ctrlConnector1);
            ctrlConnector1.Controls.Add(CreateANewUserControl());

            UserControlConnector ctrlConnector2 = new UserControlConnector();
            Panel3.Items.Add(ctrlConnector2);
            ctrlConnector2.Controls.Add(CreateANewUserControl());

        }

        private UserInfoControl CreateANewUserControl()
        {
            UserInfoControl ctrl = LoadControl("~/usercontrol/UserInfoControl.ascx") as UserInfoControl;
            ctrl.UserName = "陈萍萍";
            ctrl.UserAge = 20;
            ctrl.UserCountry = "合肥";

            return ctrl;
        }

    }
}