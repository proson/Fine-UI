using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip_iframe_disabled_tab1 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnEnableTabs_Click(object sender, EventArgs e)
        {
            Session[tabstrip_iframe_disabled.SESSION_KEY_ENABLE_TABS] = true;

            PageContext.RegisterStartupScript(String.Format("parent.__doPostBack('','{0}');", tabstrip_iframe_disabled.EVENTARGUMENT_CHECK_TABS_STATUS));
        }

        protected void btnDisableTabs_Click(object sender, EventArgs e)
        {
            Session[tabstrip_iframe_disabled.SESSION_KEY_ENABLE_TABS] = null;

            PageContext.RegisterStartupScript(String.Format("parent.__doPostBack('','{0}');", tabstrip_iframe_disabled.EVENTARGUMENT_CHECK_TABS_STATUS));
        }

    }
}
