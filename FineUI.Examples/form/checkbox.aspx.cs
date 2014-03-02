using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class checkbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LogCheckboxStatus();
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, CheckedEventArgs e)
        {
            LogCheckboxStatus();
        }

        private void LogCheckboxStatus()
        {
            labResult.Text = "复选框的状态：" + (CheckBox1.Checked ? "选中" : "未选中");
        }

        protected void btnSelectCheckBox_Click(object sender, EventArgs e)
        {
            CheckBox2.Checked = !CheckBox2.Checked;
        }
    }
}