using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using AspNet = System.Web.UI.WebControls;

namespace FineUI.Examples.data
{
    public partial class grid_excel_aspnet : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        #region BindGrid

        private void BindGrid()
        {
            DataTable table = GetDataTable();

            GridView1.DataSource = table;
            GridView1.DataBind();

        }

        #endregion


        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ResolveGridView(GridView1);

            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment; filename=MyExcelFile.xls");
            Response.ContentType = "application/excel";
            Response.ContentEncoding = System.Text.Encoding.UTF8;

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.RenderControl(htw);
            
            Response.Write(sw.ToString());
            Response.End();
        }

        
        private void ResolveGridView(Control ctrl)
        {
            for (int i = 0; i < ctrl.Controls.Count; i++)
            {
                // 图片的完整URL
                if (ctrl.Controls[i].GetType() == typeof(AspNet.Image))
                {
                    AspNet.Image img = ctrl.Controls[i] as AspNet.Image;
                    img.ImageUrl = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, Page.ResolveUrl(img.ImageUrl));
                }

                // 将CheckBox控件转化为静态文本
                if (ctrl.Controls[i].GetType() == typeof(AspNet.CheckBox))
                {
                    Literal lit = new Literal();
                    lit.Text = (ctrl.Controls[i] as AspNet.CheckBox).Checked ? "√" : "×";
                    ctrl.Controls.RemoveAt(i);
                    ctrl.Controls.AddAt(i, lit);
                }

                if (ctrl.Controls[i].HasControls())
                {
                    ResolveGridView(ctrl.Controls[i]);
                }

            }

        }
    }
}
