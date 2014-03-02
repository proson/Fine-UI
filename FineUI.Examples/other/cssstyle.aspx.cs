using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class cssstyle : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Random rd = new Random();
        //    Label1.CssStyle = String.Format("font-weight: bold; color:rgb({0}, {1}, {2});", rd.Next(255), rd.Next(255), rd.Next(255));
        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.CssClass = Label2.CssClass == "red" ? "green" : "red";
        }
    }
}