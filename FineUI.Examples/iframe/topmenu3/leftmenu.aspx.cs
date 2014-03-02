using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace FineUI.Examples.iframe.topmenu3
{
    public partial class leftmenu : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string menuType = Request.QueryString["menu"];

                BindLeftAccordion(menuType);
            }
        }


        private void BindLeftAccordion(string menuType)
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

            BindLeftAccordion();
        }

        private void BindLeftAccordion()
        {
            XmlDocument xmlDoc = XmlDataSource1.GetXmlDocument();
            XmlNodeList xmlNodes = xmlDoc.SelectNodes("/Tree/TreeNode");
            foreach (XmlNode xmlNode in xmlNodes)
            {
                if (xmlNode.HasChildNodes)
                {
                    AccordionPane accordionPane = new AccordionPane();
                    accordionPane.Title = xmlNode.Attributes["Text"].Value;
                    accordionPane.Layout = Layout.Fit;
                    accordionPane.ShowBorder = false;
                    accordionPane.BodyPadding = "2px 0 0 0";
                    leftAccordion.Items.Add(accordionPane);

                    Tree innerTree = new Tree();
                    innerTree.EnableArrows = true;
                    innerTree.ShowBorder = false;
                    innerTree.ShowHeader = false;
                    innerTree.EnableIcons = false;
                    innerTree.AutoScroll = true;
                    accordionPane.Items.Add(innerTree);

                    XmlDocument innerXmlDoc = new XmlDocument();
                    innerXmlDoc.LoadXml(String.Format("<?xml version=\"1.0\" encoding=\"utf-8\" ?><Tree>{0}</Tree>", xmlNode.InnerXml));

                    // 绑定AccordionPane内部的树控件
                    innerTree.DataSource = innerXmlDoc;
                    innerTree.DataBind();

                }
            }
        }

    }
}