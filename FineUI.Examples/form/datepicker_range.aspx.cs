using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class datepicker_range : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatePicker1.MinDate = DateTime.Now;
                DatePicker1.MaxDate = DateTime.Now.AddDays(10);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            labResult.Text = String.Format("选择的日期：{0}", DatePicker1.Text);
        }
    }
}
