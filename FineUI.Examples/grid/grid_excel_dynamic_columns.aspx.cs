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
    public partial class grid_excel_dynamic_columns : PageBase
    {
        #region Page_Init

        // 注意：动态创建的代码需要放置于Page_Init（不是Page_Load），这样每次构造页面时都会执行
        protected void Page_Init(object sender, EventArgs e)
        {
            InitGrid();
        }

        private void InitGrid()
        {
            FineUI.BoundField bf;

            bf = new FineUI.BoundField();
            bf.DataField = "Id";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "编号";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "Name";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "姓名";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "EntranceYear";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "入学年份";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataToolTipField = "Major";
            bf.DataField = "Major";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "所学专业";
            bf.ExpandUnusedSpace = true;
            Grid1.Columns.Add(bf);

            FineUI.TemplateField tf = new TemplateField();
            tf.Width = Unit.Pixel(120);
            tf.HeaderText = "性别（模板列）";
            tf.ItemTemplate = new GenderTemplate();
            Grid1.Columns.Add(tf);

            FineUI.TemplateField tf2 = new TemplateField();
            tf2.Width = Unit.Pixel(200);
            tf2.HeaderText = "分数（模板列）";
            tf2.ItemTemplate = new ChineseScoreTemplate();
            Grid1.Columns.Add(tf2);


            Grid1.DataKeyNames = new string[] { "Id", "Name" };
        }

        #endregion

        #region Page_Load
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

        protected void ExportExcel(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment;filename=myexcel.xls");
            Response.ContentType = "application/excel";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.Write(GetGridTableHtml(Grid1));
            Response.End();
        }


        private string GetGridTableHtml(Grid grid)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("<table cellspacing=\"0\" rules=\"all\" border=\"1\" style=\"border-collapse:collapse;\">");

            sb.Append("<tr>");
            foreach (GridColumn column in grid.Columns)
            {
                sb.AppendFormat("<td>{0}</td>", column.HeaderText);
            }
            sb.Append("</tr>");


            foreach (GridRow row in grid.Rows)
            {
                sb.Append("<tr>");
                foreach (object value in row.Values)
                {
                    string html = value.ToString();
                    if (html.StartsWith(Grid.TEMPLATE_PLACEHOLDER_PREFIX))
                    {
                        // 模板列
                        string templateID = html.Substring(Grid.TEMPLATE_PLACEHOLDER_PREFIX.Length);
                        Control templateCtrl = row.FindControl(templateID);
                        html = GetRenderedHtmlSource(templateCtrl);
                    }
                    else
                    {
                        // 处理CheckBox
                        if (html.Contains("box-grid-static-checkbox"))
                        {
                            if (html.Contains("uncheck"))
                            {
                                html = "×";
                            }
                            else
                            {
                                html = "√";
                            }
                        }

                        // 处理图片
                        if (html.Contains("<img"))
                        {
                            string prefix = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, "");
                            html = html.Replace("src=\"", "src=\"" + prefix);
                        }
                    }

                    sb.AppendFormat("<td>{0}</td>", html);
                }
                sb.Append("</tr>");
            }

            sb.Append("</table>");

            return sb.ToString();
        }


        /// <summary>
        /// 获取控件渲染后的HTML源代码
        /// 可能遇到的两个错误：
        /// 1. 控件必须放在具有 runat=server 的窗体标记内" - 添加重载方法 VerifyRenderingInServerForm
        /// 2. 只能在执行Render()的过程中调用RegisterForEventValidation” - 为页面添加声明 EnableEventValidation="false"
        /// </summary>
        /// <param name="ctrl"></param>
        /// <returns></returns>
        private string GetRenderedHtmlSource(Control ctrl)
        {
            if (ctrl != null)
            {
                using (StringWriter sw = new StringWriter())
                {
                    using (HtmlTextWriter htw = new HtmlTextWriter(sw))
                    {
                        ctrl.RenderControl(htw);

                        return sw.ToString();
                    }
                }
            }
            return String.Empty;
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }  

        #endregion

    }





    public class GenderTemplate : ITemplate
    {

        public void InstantiateIn(System.Web.UI.Control container)
        {
            AspNet.Label labGender = new AspNet.Label();
            labGender.DataBinding += new EventHandler(labGender_DataBinding);
            container.Controls.Add(labGender);
        }

        private void labGender_DataBinding(object sender, EventArgs e)
        {
            AspNet.Label labGender = (AspNet.Label)sender;

            IDataItemContainer dataItemContainer = (IDataItemContainer)labGender.NamingContainer;

            int gender = Convert.ToInt32(((DataRowView)dataItemContainer.DataItem)["Gender"]);

            labGender.Text = (gender == 1) ? "男" : "女";
        }
    }


    public class ChineseScoreTemplate : ITemplate
    {
        public void InstantiateIn(System.Web.UI.Control container)
        {
            AspNet.TextBox tbxChineseScore = new AspNet.TextBox();
            tbxChineseScore.DataBinding += new EventHandler(tbxChineseScore_DataBinding);
            container.Controls.Add(tbxChineseScore);
        }

        private void tbxChineseScore_DataBinding(object sender, EventArgs e)
        {
            AspNet.TextBox tbxChineseScore = (AspNet.TextBox)sender;

            IDataItemContainer dataItemContainer = (IDataItemContainer)tbxChineseScore.NamingContainer;

            int chineseScore = Convert.ToInt32(((DataRowView)dataItemContainer.DataItem)["ChineseScore"]);

            tbxChineseScore.Text = chineseScore.ToString();
        }

    }


}
