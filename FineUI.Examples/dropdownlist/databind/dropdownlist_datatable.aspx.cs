using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.dropdownlist
{
    public partial class dropdownlist_datatable : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataTableToDropDownList();
            }
        }

        #region BindDataTableToDropDownList

        private void BindDataTableToDropDownList()
        {
            DataTable table = new DataTable();
            DataColumn column1 = new DataColumn("MyText", typeof(String));
            DataColumn column2 = new DataColumn("MyValue", typeof(String));
            table.Columns.Add(column1);
            table.Columns.Add(column2);

            DataRow row = table.NewRow();
            row[0] = "选项 1";
            row[1] = "1";
            table.Rows.Add(row);
            row = table.NewRow();

            row[0] = "选项 2";
            row[1] = "2";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 3";
            row[1] = "3";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 4";
            row[1] = "4";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 5";
            row[1] = "5";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 6";
            row[1] = "6";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 7";
            row[1] = "7";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 8";
            row[1] = "8";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "选项 9";
            row[1] = "9";
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = "这是一个很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的可选项";
            row[1] = "10";
            table.Rows.Add(row);

            DropDownList1.DataTextField = "MyText";
            DropDownList1.DataValueField = "MyValue";
            DropDownList1.DataSource = table;
            DropDownList1.DataBind();
        }

        #endregion

        #region Events

        protected void btnSelectItem6_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedValue = "6";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem != null)
            {
                labResult.Text = String.Format("选中项：{0}（值：{1}）", DropDownList1.SelectedItem.Text, DropDownList1.SelectedValue);
            }
        }

        #endregion

    }
}
