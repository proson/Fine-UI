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
    public partial class grid_hdmenu_hidecolumn : PageBase
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

        #region Event


        protected void Button3_Click(object sender, EventArgs e)
        {
            GridColumn genderColumn = Grid1.FindColumn("gender");
            genderColumn.Hidden = !genderColumn.Hidden;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<ul>");
            foreach (GridColumn column in Grid1.Columns)
            {
                if (column.Hidden)
                {
                    sb.AppendFormat("<li>{0}. {1}</li>", column.ColumnIndex, column.HeaderText);
                }
            }
            sb.Append("<ul>");

            labHiddenColumns.Text = "隐藏列列表：" + sb.ToString();
        }



        #endregion

    }
}
