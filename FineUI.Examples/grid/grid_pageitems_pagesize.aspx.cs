using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_pageitems_pagesize : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

                ddlPageSize.SelectedValue = Grid1.PageSize.ToString();
            }
        }

        #region LoadData

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
        }

        protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid1.PageSize = Convert.ToInt32(ddlPageSize.SelectedValue);

            // 更改每页显示数目时，防止 PageIndex 越界
            if (Grid1.PageIndex > Grid1.PageCount - 1)
            {
                Grid1.PageIndex = Grid1.PageCount - 1;
            }
        }

        #endregion
    }
}
