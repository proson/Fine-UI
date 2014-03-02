using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class fckeditor2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FCKeditor1.Value = "<p>This is some <strong>sample text</strong>. You are using <a href=\"http://www.fckeditor.net/\">FCKEditor</a>.</p>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(HttpUtility.HtmlEncode(FCKeditor1.Value));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string content = "<p><strong>FineUI</strong> - 基于 ExtJS 的开源 ASP.NET 控件库。</p>";

            PageContext.RegisterStartupScript(String.Format("updateFCKEditor({0});", JsHelper.Enquote(content)));
        }





    }
}
