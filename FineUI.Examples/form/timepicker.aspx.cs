using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class timepicker : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 限制范围的方法一
                //TimePicker1.MinTime = new DateTime(2000, 1, 1, 8, 30, 0);
                //TimePicker1.MaxTime = new DateTime(2000, 1, 1, 20, 30, 0);
                //TimePicker1.SelectedDate = new DateTime(2000, 1, 1, 10, 30, 0);

                // 限制范围的方法二
                TimePicker1.MinTimeText = "8:30";
                TimePicker1.MaxTimeText = "20:30";
                //TimePicker1.Text = "10:30";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            labResult.Text = String.Format("日期：{0}  时间：{1}",
                DatePicker1.Text,
                TimePicker1.Text);
        }
    }
}
