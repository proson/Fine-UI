using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.accordion
{
    public partial class accordion_autopostback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("当前展开的是第 {0} 个面板", Accordion1.ActivePaneIndex + 1));
        }

        protected void Accordion1_PaneIndexChanged(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("当前展开的是第 {0} 个面板", Accordion1.ActivePaneIndex + 1));
        }
    }
}
