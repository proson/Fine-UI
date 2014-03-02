using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;

namespace FineUI.Examples.aspnet
{
    public partial class ueditor_two : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string editor1Content = Request.Form["UEditor1"].ToString();
            string editor2Content = Request.Form["UEditor2"].ToString();
            if (String.IsNullOrEmpty(editor1Content))
            {
                Alert.ShowInTop("文章正文不能为空！");
                return;
            }

            Alert.ShowInTop("文章标题：" +  tbxTitle.Text +
                "<br/>" + "文章正文：" + HttpUtility.HtmlEncode(editor1Content) +
                "<br/>" + "文章摘要：" + HttpUtility.HtmlEncode(editor2Content));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string content = Request.Form["UEditor1"].ToString();
            Regex regex = new Regex(@"<[^>]+>|</[^>]+>");
            content = regex.Replace(content, "");
            if (content.Length > 100)
            {
                content = content.Substring(0, 97) + "...";
            }

            PageContext.RegisterStartupScript(String.Format("updateUEditor2({0});", JsHelper.Enquote(content)));
        }





    }
}
