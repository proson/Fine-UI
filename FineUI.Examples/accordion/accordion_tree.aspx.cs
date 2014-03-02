using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.accordion
{
    public partial class accordion_tree : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 绑定 XML 数据源到树控件
                treeMenu.DataSource = XmlDataSource1;
                treeMenu.DataBind();

                ResolveTreeNode(treeMenu.Nodes);
            }
        }

        private void ResolveTreeNode(TreeNodeCollection nodes)
        {
            foreach (TreeNode node in nodes)
            {
                if (node.Nodes.Count == 0)
                {
                    if (!String.IsNullOrEmpty(node.NavigateUrl))
                    {
                        node.Target = "main";
                    }
                }
                else
                {
                    ResolveTreeNode(node.Nodes);
                }
            }

        }


    }
}
