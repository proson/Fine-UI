using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class ckeditor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CKEditor1.config.toolbar = new object[]
                //    {
                //        new object[] { "Source", "-", "Save", "NewPage", "Preview", "-", "Templates" },
                //        new object[] { "Cut", "Copy", "Paste", "PasteText", "PasteFromWord", "-", "Print", "SpellChecker", "Scayt" },
                //        new object[] { "Undo", "Redo", "-", "Find", "Replace", "-", "SelectAll", "RemoveFormat" },
                //        new object[] { "Form", "Checkbox", "Radio", "TextField", "Textarea", "Select", "Button", "ImageButton", "HiddenField" },
                //        "/",
                //        new object[] { "Bold", "Italic", "Underline", "Strike", "-", "Subscript", "Superscript" },
                //        new object[] { "NumberedList", "BulletedList", "-", "Outdent", "Indent", "Blockquote", "CreateDiv" },
                //        new object[] { "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock" },
                //        new object[] { "BidiLtr", "BidiRtl" },
                //        new object[] { "Link", "Unlink", "Anchor" },
                //        new object[] { "Image", "Flash", "Table", "HorizontalRule", "Smiley", "SpecialChar", "PageBreak", "Iframe" },
                //        "/",
                //        new object[] { "Styles", "Format", "Font", "FontSize" },
                //        new object[] { "TextColor", "BGColor" },
                //        new object[] { "Maximize", "ShowBlocks", "-", "About" }
                //    };

                //CKEditor1.config.toolbar = new object[]
                //    {
                //        new object[] { "Bold", "Italic", "-", "NumberedList", "BulletedList", "-", "Link", "Unlink", "-", "About" },
                //        new object[] { "Cut", "Copy", "Paste", "PasteText", "PasteFromWord", "-", "Print", "SpellChecker", "Scayt" },
                //    };

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(HttpUtility.HtmlEncode(CKEditor1.Text));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string content = "<p><strong>FineUI</strong> - 基于 ExtJS 的开源 ASP.NET 控件库。</p>";

            PageContext.RegisterStartupScript(String.Format("updateCKEditor({0});", JsHelper.Enquote(content)));
        }





    }
}
