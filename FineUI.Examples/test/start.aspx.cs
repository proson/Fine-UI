using System;
using System.Collections.Generic;
using FineUI;

namespace DotNetOA.Web.task
{
    public partial class start : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack) {

                CheckBoxList1.Items.Add("Text1", "Value1");
                CheckBoxList1.Items.Add("Text2", "Value2");
                CheckBoxList1.Items.Add("Text3", "Value3");
                CheckBoxList1.Items.Add("Text4", "Value4");
                CheckBoxList1.Items.Add("Text5", "Value5");

            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            Button1.Text = CheckBoxList1.SelectedValueArray.Length.ToString();
            
        }
    }
}