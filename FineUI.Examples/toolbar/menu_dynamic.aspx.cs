using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Xml;
using System.IO;
using System.Reflection;

namespace FineUI.Examples.toolbar
{
    public partial class menu_dynamic : PageBase
    {
        
        protected void Page_Init(object sender, EventArgs e)
        {
            LoadToolbar();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
        }


        private void LoadToolbar()
        {
            XmlDocument doc = LoadXml();

            // 根节点的子节点们
            XmlNodeList nodes = doc.DocumentElement.ChildNodes;

            foreach (XmlNode node in nodes)
            {
                FineUI.Button btn = new Button();
                btn.Text = node.Attributes["text"].Value;
                btn.EnablePostBack = false;
                Toolbar1.Items.Add(btn);

                // 如果此节点没有子节点
                if (node.ChildNodes.Count == 0)
                {
                    XmlAttribute attrURL = node.Attributes["navigateurl"];
                    if (attrURL != null)
                    {
                        btn.OnClientClick = String.Format("window.open('{0}','_blank')", attrURL.Value);
                    }
                }
                else
                {
                    ResolveMenu(btn, node.ChildNodes);
                }
            }
        }

        private XmlDocument LoadXml()
        {
            // 加载XML配置文件
            string xmlPath = Server.MapPath("~/toolbar/menu.xml");
            string xmlContent = String.Empty;
            using (StreamReader sr = new StreamReader(xmlPath))
            {
                xmlContent = sr.ReadToEnd();
            }
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(xmlContent);
            return doc;
        }


        private void ResolveMenu(ControlBase btn, XmlNodeList nodes)
        {
            //FineUI.Menu menu = new Menu();
            //// 通过反射获取属性Menus
            //PropertyInfo info = btn.GetType().GetProperty("Menus");
            //(info.GetValue(btn, null) as MenuCollection).Add(menu);

            PropertyInfo menuInfo = btn.GetType().GetProperty("Menu");
            Menu menu = menuInfo.GetValue(btn, null) as Menu;

            foreach (XmlNode node in nodes)
            {
                XmlAttribute attrURL = node.Attributes["navigateurl"];
                if (attrURL != null)
                {
                    FineUI.MenuHyperLink lnk = new FineUI.MenuHyperLink();
                    lnk.Text = node.Attributes["text"].Value;
                    lnk.NavigateUrl = attrURL.Value;
                    lnk.Target = "_blank";

                    menu.Items.Add(lnk);

                    if (node.ChildNodes.Count > 0)
                    {
                        ResolveMenu(lnk, node.ChildNodes);
                    }
                }

            }
        }


    }
}
