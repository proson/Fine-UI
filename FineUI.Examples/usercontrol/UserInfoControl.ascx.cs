using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;


namespace FineUI.Examples.usercontrol
{
    public partial class UserInfoControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadData();

        }

        private void LoadData()
        {
            labUserInfo.Text = String.Format("{0}今年{1}岁，住在{2}。", UserName, UserAge, UserCountry);

            if (!String.IsNullOrEmpty(Properties))
            {
                Panel1.RecoverPropertiesFromJObject(JObject.Parse(Properties));
            }
        }


        private string userName;
        private int userAge;
        private string userCountry;
        private string properties;

        public string Properties
        {
            get { return properties; }
            set { properties = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public int UserAge
        {
            get { return userAge; }
            set { userAge = value; }
        }

        public string UserCountry
        {
            get { return userCountry; }
            set { userCountry = value; }
        }
    }
}