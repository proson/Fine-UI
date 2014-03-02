using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class aspnet_literal : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Label1 - " + DateTime.Now.ToLongTimeString();
            Literal1.Text = "Literal1 - " + DateTime.Now.ToLongTimeString();
            Literal2.Text = "Literal2 - " + DateTime.Now.ToLongTimeString();
        }


    }
}
