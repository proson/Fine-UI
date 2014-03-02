using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class panel_collapse : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void Panel1_CollapseExpand(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("面板一处于{0}状态", Panel1.Expanded ? "展开" : "折叠"));
        }

        protected void ContentPanel1_CollapseExpand(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("面板二处于{0}状态", ContentPanel1.Expanded ? "展开" : "折叠"));
        }
    }
}
