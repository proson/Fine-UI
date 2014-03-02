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
    public partial class grid_edit_save_manual : PageBase
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
            DataTable table = GetSourceData();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }


        #endregion

        #region Events

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // 更新所有行的用户输入数据
            foreach (GridRow row in Grid1.Rows)
            {
                int rowIndex = row.RowIndex;
                System.Web.UI.WebControls.TextBox tbxTableChineseScore = (System.Web.UI.WebControls.TextBox)Grid1.Rows[rowIndex].FindControl("tbxTableChineseScore");
                System.Web.UI.WebControls.TextBox tbxTableMathScore = (System.Web.UI.WebControls.TextBox)Grid1.Rows[rowIndex].FindControl("tbxTableMathScore");

                int rowDataId = Convert.ToInt32(Grid1.DataKeys[rowIndex][0]);

                int chineseSocre = 0;
                int mathScore = 0;
                try
                {
                    chineseSocre = Convert.ToInt32(tbxTableChineseScore.Text);
                    mathScore = Convert.ToInt32(tbxTableMathScore.Text);
                }
                catch (Exception)
                {
                    // ...
                }

                SetDataRow(rowDataId, chineseSocre, mathScore);

            }

            // 更新当前选中行的详细信息
            if (Grid1.SelectedRowIndexArray.Length == 1)
            {
                int rowDataId = Convert.ToInt32(Grid1.DataKeys[Grid1.SelectedRowIndex][0]);
                UpdateDetailForm(rowDataId);
            }

        }

        protected void Grid1_RowSelect(object sender, FineUI.GridRowSelectEventArgs e)
        {
            int rowDataId = Convert.ToInt32(Grid1.DataKeys[e.RowIndex][0]);
            UpdateDetailForm(rowDataId);
        }

        private void UpdateDetailForm(int rowDataId)
        {
            DataRow row = FindDataRowById(rowDataId);
            if (row != null)
            {
                string userName = row["Name"].ToString();
                labName.Text = userName;
                labGender.Text = GetGender(row["Gender"]);
                labMajor.Text = row["Major"].ToString();
                labAtSchool.Text = Convert.ToBoolean(row["AtSchool"]) ? "是" : "否";
                labEntranceYear.Text = row["EntranceYear"].ToString();
                labChineseScore.Text = row["ChineseScore"].ToString();
                labMathScore.Text = row["MathScore"].ToString();
                labTotalScore.Text = row["TotalScore"].ToString();
                labDesc.Text = row["Desc"].ToString();

                SimpleForm1.Title = "详细信息 - " + userName;
            }
        }

        #endregion

        #region Data

        private static readonly string KEY_FOR_DATASOURCE_SESSION = "datatable_for_grid_edit_autosave";

        // 模拟在服务器端保存数据
        // 特别注意：在真实的开发环境中，不要在Session放置大量数据，否则会严重影响服务器性能
        private DataTable GetSourceData()
        {
            if (Session[KEY_FOR_DATASOURCE_SESSION] == null)
            {
                Session[KEY_FOR_DATASOURCE_SESSION] = GetDataTable();
            }
            return (DataTable)Session[KEY_FOR_DATASOURCE_SESSION];
        }

        private DataRow FindDataRowById(int dataId)
        {
            DataTable table = GetSourceData();

            foreach (DataRow row in table.Rows)
            {
                if (Convert.ToInt32(row["Id"]) == dataId)
                {
                    return row;
                }
            }
            return null;
        }

        private void SetDataRow(int dataId, int chineseScore, int mathScore)
        {
            DataRow row = FindDataRowById(dataId);
            row["ChineseScore"] = chineseScore;
            row["MathScore"] = mathScore;
            row["TotalScore"] = chineseScore + mathScore;
        }

        #endregion

    }
}
