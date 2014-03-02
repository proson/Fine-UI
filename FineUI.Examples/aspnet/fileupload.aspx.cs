using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.aspnet
{
    public partial class fileupload2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void btnCloseWindow2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName));
            }
            Alert.ShowInTop("FCKEditor的值：" + HttpUtility.HtmlEncode(FCKeditor1.Value));
        }
    }
}
