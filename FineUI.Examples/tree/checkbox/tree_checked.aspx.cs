using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using System.Xml;

namespace FineUI.Examples.tree.checkbox
{
    public partial class tree_checked : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetCheckedValues_Click(object sender, EventArgs e)
        {
            TreeNode[] nodes = Tree1.GetCheckedNodes();
            if (nodes.Length > 0)
            {
                StringBuilder sb = new StringBuilder();
                foreach (TreeNode node in nodes)
                {
                    sb.AppendFormat("{0} ", node.Text);
                }
                labResult.Text = "复选框选中的值：" + sb.ToString();
            }
            else
            {
                labResult.Text = "没有复选框被选中";
            }
        }

    }
}
