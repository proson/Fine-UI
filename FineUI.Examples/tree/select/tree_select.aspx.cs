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
    public partial class tree_select : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnGetSelectedNode_Click(object sender, EventArgs e)
        {
            string selectedId = Tree1.SelectedNodeID;
            if (!String.IsNullOrEmpty(selectedId))
            {
                labResult.Text = "选中的节点：" + Tree1.FindNode(selectedId).Text;
            }
            else
            {
                labResult.Text = "没有选中节点";
            }
        }


        protected void btnSelectHefei_Click(object sender, EventArgs e)
        {
            Tree1.SelectedNodeID = "Hefei";
        }


    }
}
