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
    public partial class grid_edit_dropdownlist_update : PageBase
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




        protected void Grid1_RowDataBound(object sender, FineUI.GridRowEventArgs e)
        {
            System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)Grid1.Rows[e.RowIndex].FindControl("ddlGender");

            List<string> genderList = new List<string>();
            genderList.Add("男");
            genderList.Add("女");
            ddlGender.DataSource = genderList;
            ddlGender.DataBind();


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
            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                GridRow row = Grid1.Rows[i];
                System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)row.FindControl("ddlGender");
                System.Web.UI.WebControls.TextBox tbxGroupName = (System.Web.UI.WebControls.TextBox)row.FindControl("tbxGroupName");

                tbxGroupName.Text = (Convert.ToInt32(tbxGroupName.Text) + 1).ToString();

            }

            // 如果不是重新绑定数据，则需要手工调用UpdateTemplateFields来更新所有TemplateField中的值
            Grid1.UpdateTemplateFields();
        }

        #endregion

    }
}
