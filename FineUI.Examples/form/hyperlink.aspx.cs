using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class hyperlink : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HyperLink2.OnClientClick = Alert.GetShowInParentReference("这是链接的客户端提示");
            }
        }


        protected void btnChangeEnable_Click(object sender, EventArgs e)
        {
            HyperLink2.Enabled = !HyperLink2.Enabled;
        }
    }
}
