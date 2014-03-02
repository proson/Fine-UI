using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_rowcheckall : PageBase
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


        #region Events

        protected void Grid1_RowClick(object sender, FineUI.GridRowClickEventArgs e)
        {
            //Alert.ShowInTop(String.Format("你点击了第 {0} 行（单击）", e.RowIndex + 1));

            bool checkedState = false;
            if (new List<int>(Grid1.SelectedRowIndexArray).Contains(e.RowIndex))
            {
                checkedState = true;
            }

            CheckBoxField field1 = (CheckBoxField)Grid1.FindColumn("CheckBoxField1");
            CheckBoxField field2 = (CheckBoxField)Grid1.FindColumn("CheckBoxField2"); 
            CheckBoxField field3 = (CheckBoxField)Grid1.FindColumn("CheckBoxField3");
            
            // Grid1.Rows[e.RowIndex].States[field1.ColumnIndex] = true;
            field1.SetCheckedState(e.RowIndex, checkedState);
            field2.SetCheckedState(e.RowIndex, checkedState);
            field3.SetCheckedState(e.RowIndex, checkedState);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBoxField field1 = (CheckBoxField)Grid1.FindColumn("CheckBoxField1");
            CheckBoxField field2 = (CheckBoxField)Grid1.FindColumn("CheckBoxField2");
            CheckBoxField field3 = (CheckBoxField)Grid1.FindColumn("CheckBoxField3");

            StringBuilder sb = new StringBuilder();
            int selectedCount = Grid1.SelectedRowIndexArray.Length;
            if (selectedCount > 0)
            {
                sb.AppendFormat("共选中了 {0} 行：", selectedCount);
                sb.Append("<ol class=\"result\">");
                for (int i = 0; i < selectedCount; i++)
                {
                    int rowIndex = Grid1.SelectedRowIndexArray[i];
                    sb.Append("<li><ul>");

                    sb.AppendFormat("<li>行号：{0}</li>", rowIndex + 1);
                    // Grid1.Rows[rowIndex].States[field1.ColumnIndex] 和 field1.GetCheckedState(rowIndex) 的结果相同
                    sb.AppendFormat("<li>是否在校1：{0}</li>", field1.GetCheckedState(rowIndex));
                    sb.AppendFormat("<li>是否在校2：{0}</li>", field2.GetCheckedState(rowIndex));
                    sb.AppendFormat("<li>是否在校3：{0}</li>", field3.GetCheckedState(rowIndex));

                    sb.Append("</ul></li>");
                }
                sb.Append("</ol>");
            }
            else
            {
                sb.Append("<strong>没有选中任何一行！</strong>");
            }

            labResult.Text = sb.ToString();
        }


        #endregion


    }
}
