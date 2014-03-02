using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //FineUI.WindowField windowField1 = Grid1.FindColumn("myWindowField") as FineUI.WindowField;
                //windowField1.DataIFrameUrlFormatString = "grid_iframe_window.aspx?id={0}&page={1}&param1=<script>" + TextBox1.GetValueReference() + "</script>";


                btnDelete.OnClientClick = Grid1.GetNoSelectionAlertReference("至少选择一项！");
                btnNew.OnClientClick = Window1.GetShowReference("grid_iframe_window.aspx", "新增");

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

        protected string GetEditUrl(object id, object name)
        {
            return Window1.GetShowReference("grid_iframe_window.aspx?id=" + id, "编辑 - " + name);
        }


        #endregion

        #region Events

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            foreach (int row in Grid1.SelectedRowIndexArray)
            {
                sb.Append(Grid1.DataKeys[row][1].ToString());
                sb.Append(",");
            }
            Alert.ShowInTop("你选择了删除行：" + sb.ToString().TrimEnd(','));
        }


        protected void Window1_Close(object sender, EventArgs e)
        {
            Alert.ShowInTop("弹出窗口关闭了！");
        }

        #endregion

    }
}
