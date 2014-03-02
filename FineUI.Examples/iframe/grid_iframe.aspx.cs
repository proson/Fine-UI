using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class grid_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AutoBindGrid();

                btnCheckSelection.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnPopupWindow.OnClientClick = Window1.GetShowReference("../grid/grid_iframe_window.aspx") + "return false;";

                btnConfirmButton.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnConfirmButton.ConfirmText = String.Format("你确定要删除选中的&nbsp;<b><script>{0}</script></b>&nbsp;项吗？", Grid2.GetSelectedCountReference());

                
            }

            Panel7.Title = "表格 - 页面加载时间：" + DateTime.Now.ToLongTimeString();

        }

        #region BindGrid

        private void AutoBindGrid()
        {
            if (ViewState["BindGrid1"] != null && Convert.ToBoolean(ViewState["BindGrid1"]))
            {
                BindGrid();
                ViewState["BindGrid1"] = false;
            }
            else
            {
                BindGrid2();
                ViewState["BindGrid1"] = true;
            }
        }

        private void BindGrid()
        {
            DataTable table = GetDataTable();

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        private void BindGrid2()
        {
            DataTable table = GetDataTable();

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        #endregion

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Grid2_Sort(object sender, FineUI.GridSortEventArgs e)
        {
            Alert.ShowInTop(e.SortField);

        }

        protected void Grid2_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Alert.ShowInTop(e.NewPageIndex.ToString());
        }

        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            AutoBindGrid();
        }


        protected void ttbSearch_Trigger1Click(object sender, EventArgs e)
        {
            AutoBindGrid();

            ttbSearch.Text = String.Empty;
            ttbSearch.ShowTrigger1 = false;
        }

        protected void ttbSearch_Trigger2Click(object sender, EventArgs e)
        {
            AutoBindGrid();

            ttbSearch.ShowTrigger1 = true;
        }

    }
}
