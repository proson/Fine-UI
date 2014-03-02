using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.basic
{
    public partial class hello : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHello_Click(object sender, EventArgs e)
        {
            Alert.Show("你好 FineUI！", MessageBoxIcon.Warning);
        }

        protected void btnHello2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("你好 FineUI！", MessageBoxIcon.Information);
        }
    }
}
