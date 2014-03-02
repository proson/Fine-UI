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
    public partial class grid_edit_dropdownlist : PageBase
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

            Grid1.DataSource = table;
            Grid1.DataBind();
            
        }



        #endregion

        #region Events

        protected void Grid1_RowDataBound(object sender, FineUI.GridRowEventArgs e)
        {
            System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)Grid1.Rows[e.RowIndex].FindControl("ddlGender");

            DataRowView row = e.DataItem as DataRowView;

            int gender = Convert.ToInt32(row["Gender"]);
            if (gender == 1)
            {
                ddlGender.SelectedValue = "男";
            }
            else
            {
                ddlGender.SelectedValue = "女";
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<table class=\"result\" style=\"width:350px;\"><tr><th>编号</th><th>姓名</th><th>用户输入的性别</th></tr>");
            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                sb.Append("<tr>");
                object[] rowDataKeys = Grid1.DataKeys[i];
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[0]);
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[1]);

                GridRow row = Grid1.Rows[i];
                System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)row.FindControl("ddlGender");
                sb.AppendFormat("<td>{0}</td>", ddlGender.SelectedValue);

                sb.Append("<tr>");
            }

            sb.Append("</table>");

            labResult.Text = sb.ToString();

        }

        #endregion

    }
}
