using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class datepicker_autopostback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = String.Format("开始日期：{0}  结束日期：{1}",
                DatePicker1.Text,
                DatePicker2.SelectedDate.HasValue ? DatePicker2.SelectedDate.Value.ToString("yyyy-MM-dd") : "Empty");
        }

        protected void DatePicker1_TextChanged(object sender, EventArgs e)
        {
            if(DatePicker1.SelectedDate.HasValue){
                DatePicker2.SelectedDate = DatePicker1.SelectedDate.Value.AddDays(3);
            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            labResult2.Text = String.Format("开始日期：{0}  结束日期：{1}",
                DatePicker3.Text,
                DatePicker4.SelectedDate.HasValue ? DatePicker4.SelectedDate.Value.ToString("yyyy-MM-dd") : "Empty");
        }

        protected void DatePicker3_DateSelect(object sender, EventArgs e)
        {
            if (DatePicker3.SelectedDate.HasValue)
            {
                DatePicker4.SelectedDate = DatePicker3.SelectedDate.Value.AddDays(3);
            }
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            labResult3.Text = String.Format("开始日期：{0}  结束日期：{1}",
                DatePicker5.Text,
                DatePicker6.SelectedDate.HasValue ? DatePicker6.SelectedDate.Value.ToString("yyyy-MM-dd") : "Empty");
        }

        protected void DatePicker5_Blur(object sender, EventArgs e)
        {
            if (DatePicker5.SelectedDate.HasValue)
            {
                DatePicker6.SelectedDate = DatePicker5.SelectedDate.Value.AddDays(3);
            }
        }

        
    }
}
