using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

namespace FineUI.Examples.grid
{
    public partial class grid_edit_enterkey_v : PageBase
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
            ViewState["UseDataSource1"] = true;

            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }

        protected int GetDataSourceCount()
        {
            DataTable table = Grid1.DataSource as DataTable;
            if (table != null)
            {
                return table.Rows.Count;
            }

            return 0;
        }

        private Random rd;

        protected int GetRandomNumber()
        {
            if (rd == null)
            {
                rd = new Random();
            }
            return rd.Next(60, 100);
        }

        #endregion

        #region Events

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable table;
            if (Convert.ToBoolean(ViewState["UseDataSource1"]))
            {
                ViewState["UseDataSource1"] = false;
                table = GetDataTable2();
            }
            else
            {
                ViewState["UseDataSource1"] = true;
                table = GetDataTable();
            }

            Grid1.DataSource = table;
            Grid1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<table class=\"result\" style=\"width:350px;\"><tr><th>编号</th><th>姓名</th><th>语文</th><th>数学</th><th>英语</th></tr>");
            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                sb.Append("<tr>");
                object[] rowDataKeys = Grid1.DataKeys[i];
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[0]);
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[1]);

                GridRow row = Grid1.Rows[i];
                System.Web.UI.WebControls.TextBox tbxYuwen = (System.Web.UI.WebControls.TextBox)row.FindControl("tbxYuwen");
                sb.AppendFormat("<td>{0}</td>", tbxYuwen.Text);
                System.Web.UI.WebControls.TextBox tbxShuxue = (System.Web.UI.WebControls.TextBox)row.FindControl("tbxShuxue");
                sb.AppendFormat("<td>{0}</td>", tbxShuxue.Text);
                System.Web.UI.WebControls.TextBox tbxYingyu = (System.Web.UI.WebControls.TextBox)row.FindControl("tbxYingyu");
                sb.AppendFormat("<td>{0}</td>", tbxYingyu.Text);

                sb.Append("<tr>");
            }

            sb.Append("</table>");

            labResult.Text = sb.ToString();

        }

        #endregion

    }
}
