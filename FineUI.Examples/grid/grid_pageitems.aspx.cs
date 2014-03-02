using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_pageitems : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        #region LoadData

        private void BindGrid()
        {
            DataTable table = GetDataTable2();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
        }

        protected void btnSelectAll_Click(object sender, EventArgs e)
        {
            Grid1.SelectAllRows();
        }

        protected void btnClearSelect_Click(object sender, EventArgs e)
        {
            Grid1.SelectedRowIndexArray = null;
        }

        protected void btnClearData_Click(object sender, EventArgs e)
        {
            // 方法一
            Grid1.DataSource = null;
            Grid1.DataBind();

            //// 方法二
            //DataTable table = GetEmptyDataTable();
            //Grid1.DataSource = table;
            //Grid1.DataBind();
        }


        protected void btnRebindData_Click(object sender, EventArgs e)
        {
            BindGrid();

           
        }
        

        #endregion
    }
}
