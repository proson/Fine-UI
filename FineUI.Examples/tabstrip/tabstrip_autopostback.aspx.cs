using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip_autopostback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            int nextIndex = TabStrip1.ActiveTabIndex + 1;

            if (nextIndex >= TabStrip1.Tabs.Count)
            {
                nextIndex = 0;
            }

            TabStrip1.ActiveTabIndex = nextIndex;
        }

        protected void TabStrip1_TabIndexChanged(object sender, EventArgs e)
        {
            if (TabStrip1.ActiveTabIndex == 0)
            {
                Label1.Text = "标签回发时间：" + DateTime.Now.ToLongTimeString();
            }
            else if (TabStrip1.ActiveTabIndex == 1)
            {
                Label2.Text = "标签回发时间：" + DateTime.Now.ToLongTimeString();
            }
            else if (TabStrip1.ActiveTabIndex == 2)
            {
                Label3.Text = "标签回发时间：" + DateTime.Now.ToLongTimeString();
            }
        }

    }
}
