using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples
{
    public partial class timer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "Label1";
                rblU_Sex.SelectedValue = "2";
                Alert.Show("ss", MessageBoxIcon.Information);
            }
        }
    }
}