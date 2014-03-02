using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip_addtab : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnAddBaidu1.OnClientClick = TabStrip1.GetAddTabReference("dynamic_tab_baidu1", "http://www.baidu.com/", "Baidu1", IconHelper.GetIconUrl(Icon.Application), true);
                btnAddCnblogs1.OnClientClick = TabStrip1.GetAddTabReference("dynamic_tab_cnblogs1", "http://www.cnblogs.com/", "Cnblogs1", IconHelper.GetIconUrl(Icon.ApplicationAdd), true);
                btnRemoveBaidu1.OnClientClick = TabStrip1.GetRemoveTabReference("dynamic_tab_baidu1");
                btnRemoveCnblogs1.OnClientClick = TabStrip1.GetRemoveTabReference("dynamic_tab_cnblogs1");

            }
        }

        protected void btnAddBaidu2_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(TabStrip1.GetAddTabReference("dynamic_tab_baidu2", "http://www.baidu.com/", "Baidu2", IconHelper.GetIconUrl(Icon.Application), true));
        }

        protected void btnAddCnblogs2_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(TabStrip1.GetAddTabReference("dynamic_tab_cnblogs2", "http://www.cnblogs.com/", "Cnblogs2", IconHelper.GetIconUrl(Icon.ApplicationAdd), true));
        }

        protected void btnRemoveBaidu2_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(TabStrip1.GetRemoveTabReference("dynamic_tab_baidu2"));
        }

        protected void btnRemoveCnblogs2_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(TabStrip1.GetRemoveTabReference("dynamic_tab_cnblogs2"));
        }

    }
}
