using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

namespace FineUI.Examples.data
{
    public partial class grid_rowcolor : PageBase
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

            highlightRows.Text = "";
            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Grid1

        protected void Grid1_RowDataBound(object sender, FineUI.GridRowEventArgs e)
        {
            // e.DataItem  -> System.Data.DataRowView or custom class.
            // e.RowIndex -> Current row index.
            // e.Values -> Rendered html for each column of this row.
            
            DataRowView row = e.DataItem as DataRowView;
            if (row != null)
            {
                //e.Values[1] = String.Format("Bound - {0}", row["MyValue"]);
                int entranceYear = Convert.ToInt32(row["EntranceYear"]);

                if (entranceYear >= 2006)
                {
                    highlightRows.Text += e.RowIndex.ToString() + ",";
                }
            }
        }


        #endregion

        #region Event

        protected void Button1_Click(object sender, EventArgs e)
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

            // 重新绑定数据前，先清空高亮的行数据
            highlightRows.Text = "";

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

    }
}
