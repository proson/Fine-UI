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
    public partial class tree_nodecommand : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Tree1_NodeCommand(object sender, FineUI.TreeCommandEventArgs e)
        {
            labResult.Text = "你点击了树节点：" + e.Node.Text;
        }


    }
}
