using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;


namespace FineUI.Examples.usercontrol
{
    public partial class userinfo2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            JObject jo = new JObject();
            jo.Add("BoxMargin", "0");
            jo.Add("BoxFlex", 1);
            UserInfoControl5.Properties = jo.ToString(Formatting.None);
        }
    }
}