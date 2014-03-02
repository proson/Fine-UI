using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip_iframe_disabled : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            else
            {
                if (GetRequestEventArgument() == EVENTARGUMENT_CHECK_TABS_STATUS)
                {
                    if (Session[SESSION_KEY_ENABLE_TABS] == null)
                    {
                        Tab2.Enabled = false;
                        Tab3.Enabled = false;
                    }
                    else
                    {
                        Tab2.Enabled = true;
                        Tab3.Enabled = true;
                    }
                }
            }
        }

        public static readonly string SESSION_KEY_ENABLE_TABS = "session_key_enable_tabs";
        public static readonly string EVENTARGUMENT_CHECK_TABS_STATUS = "eventargument_check_tabs_status";


    }
}
