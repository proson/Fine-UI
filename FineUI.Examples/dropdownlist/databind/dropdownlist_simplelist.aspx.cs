using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.dropdownlist
{
    public partial class dropdownlist_simplelist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStringListToDropDownList();
            }
        }

        #region BindStringListToDropDownList

        private void BindStringListToDropDownList()
        {
            List<string> strList = new List<string>();
            strList.Add("选项 1");
            strList.Add("选项 2");
            strList.Add("选项 3");
            strList.Add("选项 4");
            strList.Add("选项 5");
            strList.Add("选项 6");
            strList.Add("选项 7");
            strList.Add("选项 8");
            strList.Add("选项 9");
            strList.Add("这是一个很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的可选项");

            DropDownList1.DataSource = strList;
            DropDownList1.DataBind();

        }
        #endregion

        #region Events

        protected void btnSelectItem6_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedValue = "选项 6";
        }

        protected void btnGetSelection_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem != null)
            {
                labResult.Text = String.Format("选中项：{0}（值：{1}）", DropDownList1.SelectedItem.Text, DropDownList1.SelectedValue);
            }
        } 

        #endregion

    }
}
