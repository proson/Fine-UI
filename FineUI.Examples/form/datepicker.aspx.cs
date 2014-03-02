using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class datepicker : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatePicker1.SelectedDate = DateTime.Now;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            labResult.Text = String.Format("开始日期：{0}  结束日期：{1}",
                DatePicker1.Text,
                DatePicker2.SelectedDate.HasValue ? DatePicker2.SelectedDate.Value.ToString("yyyy-MM-dd") : "Empty");
        }
    }
}
