using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using AspNet = System.Web.UI.WebControls;

namespace FineUI.Examples.grid
{
    public partial class grid_edit_checkboxlist : PageBase
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
            AspNet.CheckBoxList cblHobby = (AspNet.CheckBoxList)Grid1.Rows[e.RowIndex].FindControl("cblHobby");

            DataRowView row = e.DataItem as DataRowView;

            string hobby = row["Hobby"].ToString() + ",";
            foreach (AspNet.ListItem item in cblHobby.Items)
            {
                if (hobby.Contains(item.Value + ","))
                {
                    item.Selected = true;
                }
                else
                {
                    item.Selected = false;
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<table class=\"result\" style=\"width:400px;\"><tr><th>编号</th><th>姓名</th><th>用户输入的爱好</th></tr>");
            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                sb.Append("<tr>");
                object[] rowDataKeys = Grid1.DataKeys[i];
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[0]);
                sb.AppendFormat("<td>{0}</td>", rowDataKeys[1]);

                GridRow row = Grid1.Rows[i];
                AspNet.CheckBoxList cblHobby = (AspNet.CheckBoxList)row.FindControl("cblHobby");
                sb.AppendFormat("<td>{0}</td>", GetHobbies(cblHobby));

                sb.Append("<tr>");
            }

            sb.Append("</table>");

            labResult.Text = sb.ToString();

        }

        private string GetHobbies(AspNet.CheckBoxList cblHobby)
        {
            StringBuilder sb = new StringBuilder();
            foreach (AspNet.ListItem item in cblHobby.Items)
            {
                if (item.Selected)
                {
                    switch (item.Value)
                    {
                        case "reading":
                            sb.Append("读书,");
                            break;
                        case "basketball":
                            sb.Append("篮球,");
                            break;
                        case "travel":
                            sb.Append("旅游,");
                            break;
                        case "movie":
                            sb.Append("电影,");
                            break;
                        case "music":
                            sb.Append("音乐,");
                            break;
                    }
                }
            }
            return sb.ToString().TrimEnd(',');
        }

        #endregion

    }
}
