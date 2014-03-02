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
    public partial class grid_excel_selectcolumns : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnSelectColumns.OnClientClick = Window1.GetShowReference("../grid/grid_excel_selectcolumns_iframe_window.aspx");

                BindGrid();
            }
        }

        #region BindGrid
        private void BindGrid()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment; filename=MyExcelFile.xls");
            Response.ContentType = "application/excel";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.Write(GetGridTableHtml(Grid1, e.CloseArgument.Split('#')));
            Response.End();
        }

        private string GetGridTableHtml(Grid grid, string[] columns)
        {
            StringBuilder sb = new StringBuilder();

            List<string> columnHeaderTexts = new List<string>(columns);
            List<int> columnIndexs = new List<int>();

            sb.Append("<table cellspacing=\"0\" rules=\"all\" border=\"1\" style=\"border-collapse:collapse;\">");

            sb.Append("<tr>");
            foreach (GridColumn column in grid.Columns)
            {
                if(columnHeaderTexts.Contains(column.HeaderText)) {
                    sb.AppendFormat("<td>{0}</td>", column.HeaderText);
                    columnIndexs.Add(column.ColumnIndex);
                }
            }
            sb.Append("</tr>");


            foreach (GridRow row in grid.Rows)
            {
                sb.Append("<tr>");
                int columnIndex = 0;
                foreach (object value in row.Values)
                {
                    if (columnIndexs.Contains(columnIndex))
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
                            if (html.Contains("f-grid-static-checkbox"))
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

                    columnIndex++;
                }
                sb.Append("</tr>");
            }

            sb.Append("</table>");

            return sb.ToString();
        }

        /// <summary>
        /// 获取控件渲染后的HTML源代码
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

        #endregion

        

    }
}
