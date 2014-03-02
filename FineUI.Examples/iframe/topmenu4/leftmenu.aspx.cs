using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe.topmenu4
{
    public partial class leftmenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string menuType = Request.QueryString["menu"];

                BindLeftTree(menuType);
            }
        }

        private void BindLeftTree(string menuType)
        {
            if (String.IsNullOrEmpty(menuType))
            {
                menuType = "mail";
            }

            if (menuType == "mail")
            {
                XmlDataSource1.DataFile = "./data/menuMail.xml";
            }
            else if (menuType == "sys")
            {
                XmlDataSource1.DataFile = "./data/menuSYS.xml";
            }
            else if (menuType == "sms")
            {
                XmlDataSource1.DataFile = "./data/menusms.xml";
            }

            leftTree.DataSource = XmlDataSource1;
            leftTree.DataBind();
        }
    }
}