using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip_enableclose : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnShowInClient.OnClientClick = Tab3.GetShowReference();
                btnHideInClient.OnClientClick = Tab3.GetHideReference();
            }
        }

        protected void btnShowInServer_Click(object sender, EventArgs e)
        {
            Tab3.Hidden = false;
        }

        protected void btnHideInServer_Click(object sender, EventArgs e)
        {
            Tab3.Hidden = true;
        }


    }
}
