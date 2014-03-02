using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using System.Xml;

namespace FineUI.Examples.tree.select
{
    public partial class tree_multi_select : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Tree1.SelectedNodeIDArray = new string[] { "Zhumadian", "Luohe" };
            }
        }


        protected void btnGetSelectedValues_Click(object sender, EventArgs e)
        {
            string[] nodeIds = Tree1.SelectedNodeIDArray;
            if (nodeIds.Length > 0)
            {
                StringBuilder sb = new StringBuilder();
                foreach (string nodeId in nodeIds)
                {
                    sb.AppendFormat(" {0}", Tree1.FindNode(nodeId).Text);
                }
                labResult.Text = "选中的节点：" + sb.ToString();
            }
            else
            {
                labResult.Text = "没有选中节点";
            }
        }

        private string GetTextPaddingRight(string text, int length)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(text);
            for (int i = 0, count = length - text.Length; i < count; i++)
            {
                sb.Append("&nbsp;");
            }
            return sb.ToString();
        }


        protected void btnSelectOthers_Click(object sender, EventArgs e)
        {
            List<string> selects = new List<string>(Tree1.SelectedNodeIDArray);
            selects.Add("Hefei");
            selects.Add("Huangshan");
            Tree1.SelectedNodeIDArray = selects.ToArray();
        }

    }
}
