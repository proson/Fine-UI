using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples.grid
{
    public partial class grid_paging_selection : PageBase
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
            SyncSelectedRowIndexArrayToHiddenField();

            labResult.Text = "选中行的ID列表为：" + hfSelectedIDS.Text.Trim();
        }

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            SyncSelectedRowIndexArrayToHiddenField();

            Grid1.PageIndex = e.NewPageIndex;

            UpdateSelectedRowIndexArray();

        }

        private List<string> GetSelectedRowIndexArrayFromHiddenField()
        {
            JArray idsArray = new JArray();

            string currentIDS = hfSelectedIDS.Text.Trim();
            if (!String.IsNullOrEmpty(currentIDS))
            {
                idsArray = JArray.Parse(currentIDS);
            }
            else
            {
                idsArray = new JArray();
            }

            return new List<string>(idsArray.ToObject<string[]>());
        }

        private void SyncSelectedRowIndexArrayToHiddenField()
        {
            List<string> ids = GetSelectedRowIndexArrayFromHiddenField();

            List<int> selectedRows = new List<int>();
            if (Grid1.SelectedRowIndexArray != null && Grid1.SelectedRowIndexArray.Length > 0)
            {
                selectedRows = new List<int>(Grid1.SelectedRowIndexArray);
            }

            int startPageIndex = Grid1.PageIndex * Grid1.PageSize;
            for (int i = startPageIndex, count = Math.Min(startPageIndex + Grid1.PageSize, Grid1.RecordCount); i < count; i++)
            {
                string id = Grid1.DataKeys[i][0].ToString();
                if (selectedRows.Contains(i - startPageIndex))
                {
                    if (!ids.Contains(id))
                    {
                        ids.Add(id);
                    }
                }
                else
                {
                    if (ids.Contains(id))
                    {
                        ids.Remove(id);
                    }
                }

            }

            hfSelectedIDS.Text = new JArray(ids).ToString(Formatting.None);
        }


        private void UpdateSelectedRowIndexArray()
        {
            List<string> ids = GetSelectedRowIndexArrayFromHiddenField();

            List<int> nextSelectedRowIndexArray = new List<int>();
            int nextStartPageIndex = Grid1.PageIndex * Grid1.PageSize;
            for (int i = nextStartPageIndex, count = Math.Min(nextStartPageIndex + Grid1.PageSize, Grid1.RecordCount); i < count; i++)
            {
                string id = Grid1.DataKeys[i][0].ToString();
                if (ids.Contains(id))
                {
                    nextSelectedRowIndexArray.Add(i - nextStartPageIndex);
                }
            }
            Grid1.SelectedRowIndexArray = nextSelectedRowIndexArray.ToArray();
        }

        #endregion
    }
}
