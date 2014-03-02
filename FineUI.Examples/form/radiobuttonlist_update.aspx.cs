using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FineUI.Examples.form
{
    public partial class radiobuttonlist_update : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitRadioButtonList2();
            }
        }

        private void InitRadioButtonList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "可选项 1"));
            myList.Add(new TestClass("value2", "可选项 2"));
            myList.Add(new TestClass("value3", "可选项 3"));
            myList.Add(new TestClass("value4", "可选项 4"));
            myList.Add(new TestClass("value5", "可选项 5"));
            myList.Add(new TestClass("value6", "可选项 6"));

            RadioButtonList2.DataTextField = "Name";
            RadioButtonList2.DataValueField = "Id";
            RadioButtonList2.DataSource = myList;
            RadioButtonList2.DataBind();

            RadioButtonList2.SelectedValue = "value1";

        }

        #region TestClass

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


        #endregion

        #region Events

        #region RadioButtonList1

        protected void btnUpdateList1_Click(object sender, EventArgs e)
        {
            BindRadioButtonList1();
        }

        private void BindRadioButtonList1()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "数据绑定值 1"));
            myList.Add(new TestClass("value2", "数据绑定值 2"));
            myList.Add(new TestClass("value3", "数据绑定值 3"));
            myList.Add(new TestClass("value4", "数据绑定值 4"));

            RadioButtonList1.DataTextField = "Name";
            RadioButtonList1.DataValueField = "Id";
            RadioButtonList1.DataSource = myList;
            RadioButtonList1.DataBind();

            RadioButtonList1.SelectedValue = "value3";

        }

        protected void btnCheckedItemsList1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表一选中项的值：" + GetCheckedValuesString(RadioButtonList1.SelectedValue));
        }


        #endregion

        #region RadioButtonList2

        protected void btnUpdateList2_Click(object sender, EventArgs e)
        {
            BindRadioButtonList2();
        }

        private void BindRadioButtonList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "数据绑定值 1"));
            myList.Add(new TestClass("value2", "数据绑定值 2"));
            myList.Add(new TestClass("value3", "数据绑定值 3"));
            myList.Add(new TestClass("value4", "数据绑定值 4"));
            myList.Add(new TestClass("value5", "数据绑定值 5"));
            myList.Add(new TestClass("value6", "数据绑定值 6"));

            RadioButtonList2.DataTextField = "Name";
            RadioButtonList2.DataValueField = "Id";
            RadioButtonList2.DataSource = myList;
            RadioButtonList2.DataBind();

            RadioButtonList2.SelectedValue = "value6";

        }

        protected void btnCheckedItemsList2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表二选中项的值：" + GetCheckedValuesString(RadioButtonList2.SelectedValue));
        }

        #endregion

        #region RadioButtonList3

        protected void btnUpdateList3_Click(object sender, EventArgs e)
        {
            BindRadioButtonList3();
        }

        private void BindRadioButtonList3()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "数据绑定值 1"));
            myList.Add(new TestClass("value2", "数据绑定值 2"));
            myList.Add(new TestClass("value3", "数据绑定值 3"));
            myList.Add(new TestClass("value4", "数据绑定值 4"));
            myList.Add(new TestClass("value5", "数据绑定值 5"));
            myList.Add(new TestClass("value6", "数据绑定值 6"));
            myList.Add(new TestClass("value7", "数据绑定值 7"));
            myList.Add(new TestClass("value8", "数据绑定值 8"));
            myList.Add(new TestClass("value9", "数据绑定值 9"));

            RadioButtonList3.DataTextField = "Name";
            RadioButtonList3.DataValueField = "Id";
            RadioButtonList3.DataSource = myList;
            RadioButtonList3.DataBind();

            RadioButtonList3.SelectedValue = "value7";

        }

        protected void btnCheckedItemsList3_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表三选中项的值：" + GetCheckedValuesString(RadioButtonList3.SelectedValue));
        }

        #endregion

        #region RadioButtonList4

        protected void btnUpdateList4_Click(object sender, EventArgs e)
        {
            if (RadioButtonList4.Items.Count > 0)
            {
                ClearRadioButtonList4();
            }
            else
            {
                BindRadioButtonList4();
            }
        }

        private void BindRadioButtonList4()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "数据绑定值 1"));
            myList.Add(new TestClass("value2", "数据绑定值 2"));
            myList.Add(new TestClass("value3", "数据绑定值 3"));
            myList.Add(new TestClass("value4", "数据绑定值 4"));
            myList.Add(new TestClass("value5", "数据绑定值 5"));
            myList.Add(new TestClass("value6", "数据绑定值 6"));

            RadioButtonList4.DataTextField = "Name";
            RadioButtonList4.DataValueField = "Id";
            RadioButtonList4.DataSource = myList;
            RadioButtonList4.DataBind();

            RadioButtonList4.SelectedValue = "value2";

        }

        private void ClearRadioButtonList4()
        {
            RadioButtonList4.Items.Clear();
        }

        protected void btnCheckedItemsList4_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("列表四选中项的值：" + GetCheckedValuesString(RadioButtonList4.SelectedValue));
        }

        #endregion

        private string GetCheckedValuesString(string selectedValue)
        {
            if (String.IsNullOrEmpty(selectedValue))
            {
                return "无";
            }

            return selectedValue;
        }

        #endregion


    }
}
