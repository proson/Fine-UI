using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class aspnet : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            aspBox.Text = "1. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "1. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            aspBox.Text = "2. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "2. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            aspBox.Text = "3. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "3. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            aspBox.Text = "4. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "4. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
        }


    }
}
