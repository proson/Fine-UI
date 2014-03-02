using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples
{
    public partial class test4 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //RadioButtonList1.SelectedValue = "Value3";
            }
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    //DynamicControls();
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    TextBox1.Hidden = true;
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Alert.Show("Button2");
        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    Alert.Show("Button3");
        //}

        //protected int count = 1;

        //protected void IterateThroughChildren(Control parent)
        //{
        //    foreach (Control c in parent.Controls)
        //    {
        //        if (c.GetType().ToString().Equals("System.Web.UI.WebControls.TextBox") &&
        //              c.ID == null)
        //        {
        //            ((System.Web.UI.WebControls.TextBox)c).Text = "TextBox " + count.ToString();

        //            count++;
        //        }

        //        if (c.Controls.Count > 0)
        //        {
        //            IterateThroughChildren(c);
        //        }
        //    }
        //}

        //protected void CreateTextBoxes(Object sender, EventArgs e)
        //{
        //    if (!Page.IsValid) return;

        //    ViewState["DynamicTextBox"] = txtTBCount.Text;

        //    DynamicControls();
        //}

        //protected void DynamicControls()
        //{
        //    if (ViewState["DynamicTextBox"] != null)
        //    {
        //        int n = Int32.Parse(ViewState["DynamicTextBox"].ToString());

        //        // now, create n TextBoxes, adding them to the PlaceHolder TextBoxesHere
        //        for (int i = 0; i < n; i++)
        //        {
        //            TextBoxesHere.Controls.Add(new System.Web.UI.WebControls.TextBox());
        //        }

        //        // now, set the Text property of each TextBox
        //        IterateThroughChildren(this);
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.Show("Button1");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Alert.Show("Button2");
        }

    }
}
