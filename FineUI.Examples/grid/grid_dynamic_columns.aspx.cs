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
    public partial class grid_dynamic_columns : PageBase
    {
        #region Page_Init

        // 注意：动态创建的代码需要放置于Page_Init（不是Page_Load），这样每次构造页面时都会执行
        protected void Page_Init(object sender, EventArgs e)
        {
            InitGrid();
        }

        private void InitGrid()
        {
            FineUI.BoundField bf;

            bf = new FineUI.BoundField();
            bf.DataField = "Id";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "编号";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "Name";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "姓名";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "EntranceYear";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "入学年份";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataToolTipField = "Major";
            bf.DataField = "Major";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "所学专业";
            bf.ExpandUnusedSpace = true;
            Grid1.Columns.Add(bf);

            Grid1.DataKeyNames = new string[] { "Id", "Name" };
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        #region LoadData

        private void LoadData()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

    }
}
