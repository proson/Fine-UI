using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class image : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Image3.ImageWidth.Value == 32)
            {
                Image3.ImageWidth = Unit.Pixel(64);
                Image3.ImageHeight = Unit.Pixel(64);
            }
            else
            {
                Image3.ImageWidth = Unit.Pixel(32);
                Image3.ImageHeight = Unit.Pixel(32);
            }
        }

    }
}
