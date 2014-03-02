using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Xml;
using System.IO;

namespace FineUI.Examples.toolbar
{
    public partial class menu_dynamic2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            FineUI.Button btn = new Button();
            btn.Text = "工具栏中的按钮数（动态添加的按钮）";
            btn.Click += new EventHandler(btn_Click);
            Toolbar1.Items.Add(btn);
        }

        private void btn_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("工具栏中的按钮数：" + Toolbar1.Items.Count);
        }


    }
}
