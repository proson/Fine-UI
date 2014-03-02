using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class ueditor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                //string content = "初始化内容";
                //PageContext.RegisterStartupScript(JsHelper.GetDeferScript(String.Format("updateUEditor({0});", JsHelper.Enquote(content)), 500));

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ueditorContent = Request.Form["UEditor1"].ToString();
            Alert.ShowInTop(HttpUtility.HtmlEncode(ueditorContent));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string content = "<p><strong>FineUI</strong> - 基于 ExtJS 的开源 ASP.NET 控件库，拥有完善的 AJAX 支持和丰富的界面效果。</p>";

            PageContext.RegisterStartupScript(String.Format("updateUEditor({0});", JsHelper.Enquote(content)));
        }





    }
}
