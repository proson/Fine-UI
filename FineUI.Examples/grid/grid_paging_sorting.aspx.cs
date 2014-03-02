using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_paging_sorting : PageBase
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
            string sortField = Grid1.SortField;
            string sortDirection = Grid1.SortDirection;

            DataTable table = GetDataTable();

            DataView view1 = table.DefaultView;
            view1.Sort = String.Format("{0} {1}", sortField, sortDirection);

            Grid1.DataSource = view1;
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



        protected void Grid1_Sort(object sender, FineUI.GridSortEventArgs e)
        {
            Grid1.SortDirection = e.SortDirection;
            Grid1.SortField = e.SortField;

            BindGrid();
        }


        #endregion
    }
}
