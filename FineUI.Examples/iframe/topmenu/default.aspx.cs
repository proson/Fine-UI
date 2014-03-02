using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Xml;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;


namespace FineUI.Examples.iframe.topmenu
{
    public partial class _default : PageBase
    {

        #region Page_Load

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindLeftTree();
            }
        }

        #endregion

        private void BindLeftTree(string menuType)
        {
            if (menuType == "mail")
            {
                XmlDataSource1.DataFile = "./data/menuMail.xml";
                PageContext.RegisterStartupScript("selectMenu('menu-mail');");
            }
            else if (menuType == "sys")
            {
                XmlDataSource1.DataFile = "./data/menuSYS.xml";
                PageContext.RegisterStartupScript("selectMenu('menu-sys');");
            }
            else if (menuType == "sms")
            {
                XmlDataSource1.DataFile = "./data/menusms.xml";
                PageContext.RegisterStartupScript("selectMenu('menu-sms');");
            }

            BindLeftTree();
        }

        private void BindLeftTree()
        {
            leftTree.DataSource = XmlDataSource1;
            leftTree.DataBind();
        }

        #region Events

        protected void lbtnMail_Click(object sender, EventArgs e)
        {
            BindLeftTree("mail");
        }


        protected void lbtnSYS_Click(object sender, EventArgs e)
        {
            BindLeftTree("sys");
        }


        protected void lbtnSMS_Click(object sender, EventArgs e)
        {
            BindLeftTree("sms");
        }

        #endregion
    }

}