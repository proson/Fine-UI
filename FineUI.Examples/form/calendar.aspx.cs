using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class calendar : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.MinDate = DateTime.Now;
                Calendar1.MaxDate = DateTime.Now.AddDays(10);

                Button1.Text = String.Format("选中{0}", DateTime.Now.AddDays(2).ToString(Calendar1.DateFormatString));
            }
        }

        private void UpdateResult()
        {
            labResult1.Text = String.Format("选择的日期：{0}", Calendar1.SelectedDate.Value.ToString(Calendar1.DateFormatString));
        }

        protected void Calendar1_DateSelect(object sender, EventArgs e)
        {
            UpdateResult();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Now.AddDays(2);

            UpdateResult();
        }
    }
}
