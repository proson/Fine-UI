using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button_menu : PageBase
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            MenuHyperLink menuSCMS = new MenuHyperLink();
            menuSCMS.Target = "_blank";
            menuSCMS.Text = "化学与材料科学学院";
            menuSCMS.Icon = Icon.TagGreen;
            menuSCMS.NavigateUrl = "http://scms.ustc.edu.cn/";
            Button1.Menu.Items.Add(menuSCMS);

            MenuHyperLink menuBZ = new MenuHyperLink();
            menuBZ.Target = "_blank";
            menuBZ.Text = "管理学院";
            menuBZ.Icon = Icon.TagBlue;
            menuBZ.NavigateUrl = "http://business.ustc.edu.cn/zh_CN/";
            Button1.Menu.Items.Add(menuBZ);

            MenuHyperLink menuIS = new MenuHyperLink();
            menuIS.Target = "_blank";
            menuIS.Text = "工商管理系";
            menuIS.Icon = Icon.TagPink;
            menuIS.NavigateUrl = "http://is.ustc.edu.cn/";
            menuBZ.Menu.Items.Add(menuIS);


            MenuHyperLink menuSTAT = new MenuHyperLink();
            menuSTAT.Target = "_blank";
            menuSTAT.Text = "统计与金融系";
            menuSTAT.Icon = Icon.TagPink;
            menuSTAT.NavigateUrl = "http://stat.ustc.edu.cn/";
            menuBZ.Menu.Items.Add(menuSTAT);

        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }





    }
}
