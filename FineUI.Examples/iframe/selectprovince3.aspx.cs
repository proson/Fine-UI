using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class selectprovince3 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSheng();

                Button1.OnClientClick = Window1.GetShowReference("./selectprovince3_child.aspx");
            }

        }


        private void BindSheng()
        {
            ddlSheng.DataSource = SHENG_JSON;
            ddlSheng.DataBind();

            ddlSheng.Items.Insert(0, new ListItem("选择省份", "-1"));
        }

        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {
            if (e.CloseArgument.StartsWith("SelectProvince$"))
            {
                string provinceName = e.CloseArgument.Substring("SelectProvince$".Length);

                ddlSheng.SelectedValue = provinceName;
            }
        }


    }
}
