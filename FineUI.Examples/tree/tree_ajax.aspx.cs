using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.data
{
    public partial class tree_ajax : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Tree1_NodeExpand(object sender, FineUI.TreeExpandEventArgs e)
        {
            DynamicAppendNode(e.Node);
        }

        private void DynamicAppendNode(TreeNode parentNode)
        {
            parentNode.Expanded = true;

            TreeNode node = null;
            switch (parentNode.NodeID)
            {
                case "zhumadian":
                    node = new TreeNode();
                    node.Text = "遂平县";
                    node.Leaf = false;
                    node.NodeID = "suiping";
                    parentNode.Nodes.Add(node);

                    node = new TreeNode();
                    node.Text = "西平县";
                    node.Leaf = true;
                    node.NodeID = "xiping";
                    parentNode.Nodes.Add(node);
                    break;
                case "suiping":
                    node = new TreeNode();
                    node.Text = "槐树乡";
                    node.Leaf = false;
                    node.NodeID = "huaishu";
                    parentNode.Nodes.Add(node);
                    break;
                case "huaishu":
                    node = new TreeNode();
                    node.Text = "陈庄村";
                    node.Leaf = true;
                    node.NodeID = "chenzhuang";
                    parentNode.Nodes.Add(node);
                    break;
            }
        }

    }
}
