using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class fileupload : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (filePhoto.HasFile)
            {
                string fileName = filePhoto.ShortFileName;

                if (!ValidateFileType(fileName))
                {
                    Alert.Show("无效的文件类型！");
                    return;
                }


                fileName = fileName.Replace(":", "_").Replace(" ", "_").Replace("\\", "_").Replace("/", "_");
                fileName = DateTime.Now.Ticks.ToString() + "_" + fileName;

                filePhoto.SaveAs(Server.MapPath("~/upload/" + fileName));


                labResult.Text = "<p>用户名：" + tbxUseraName.Text + "</p>" +
                    "<p>头像：<br /><img src=\"" + ResolveUrl("~/upload/" + fileName) + "\" /></p>";

                //// 清空表单字段（第一种方法）
                //tbxUseraName.Reset();
                //filePhoto.Reset();

                // 清空表单字段（第三种方法）
                SimpleForm1.Reset();
            }
        }

    }
}