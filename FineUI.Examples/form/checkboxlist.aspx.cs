using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FineUI.Examples.form
{
    public partial class checkboxlist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCheckBoxList();

            }
        }


        #region BindCheckBoxList

        public class TestClass
        {
            private string _id;

            public string Id
            {
                get { return _id; }
                set { _id = value; }
            }
            private string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }

            public TestClass(string id, string name)
            {
                _id = id;
                _name = name;
            }

        }

        private void BindCheckBoxList()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("1", "数据绑定值 1"));
            myList.Add(new TestClass("2", "数据绑定值 2"));
            myList.Add(new TestClass("3", "数据绑定值 3"));
            myList.Add(new TestClass("4", "数据绑定值 4"));

            CheckBoxList2.DataTextField = "Name";
            CheckBoxList2.DataValueField = "Id";
            CheckBoxList2.DataSource = myList;
            CheckBoxList2.DataBind();

            CheckBoxList2.SelectedValueArray = new string[] { "1", "3" };
        }
        #endregion

        #region Events

        protected void btnServerSetSelectedValue_Click(object sender, EventArgs e)
        {
            CheckBoxList1.SelectedValueArray = new string[] {"value1", "value3"};
        }

        protected void btnServerGetSelectedValue_Click(object sender, EventArgs e)
        {
            if (CheckBoxList1.SelectedValueArray.Length > 0)
            {
                Alert.ShowInTop(String.Format("列表一选中项的值：{0}", GetArrayString(CheckBoxList1.SelectedValueArray)));
            }
            else
            {
                Alert.ShowInTop(String.Format("列表一没有选中项！"));
            }
        }

        protected void rblAutoPostBack_SelectedIndexChanged(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表三选中项的值：" + GetArrayString(rblAutoPostBack.SelectedValueArray));
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表二选中项的值：" + GetArrayString(CheckBoxList2.SelectedValueArray) + "<br/>列表三选中项的值：" + GetArrayString(rblAutoPostBack.SelectedValueArray) + "<br/>列表四选中项的值：" + GetArrayString(rblVertical.SelectedValueArray));
        }

        private string GetArrayString(string[] array)
        {
            StringBuilder sb = new StringBuilder();
            foreach (string item in array)
            {
                sb.Append(item);
                sb.Append(",");
            }
            return sb.ToString().TrimEnd(',');
        }

        #endregion


    }
}
