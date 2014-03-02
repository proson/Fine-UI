using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class panel : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("面板处于{0}状态", Panel1.Expanded ? "展开" : "折叠"));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ContentPanel1.Expanded = !ContentPanel1.Expanded;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Title = String.Format("面板（{0}）", DateTime.Now.ToLongTimeString());
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ToolbarText1.Text = String.Format("工具条文本一（{0}）", DateTime.Now.ToLongTimeString());
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ToolbarText1.Hidden = !ToolbarText1.Hidden;
            ToolbarSeparator1.Hidden = !ToolbarSeparator1.Hidden;
        }
    }
}
