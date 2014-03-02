using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples.grid
{
    public partial class grid_excel_selectcolumns_iframe_window : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }

        private void LoadData()
        {
            btnClose.OnClientClick = ActiveWindow.GetHideReference();

        }


        protected void btnSaveContinue_Click(object sender, EventArgs e)
        {
            // 1. 这里放置保存窗体中数据的逻辑
            

            // 2. 关闭本窗体，然后回发父窗体
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference(String.Join("#", cblColumns.SelectedValueArray)));
        }


    }
}
