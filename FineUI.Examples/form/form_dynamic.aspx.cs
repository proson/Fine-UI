using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;


namespace FineUI.Examples.form
{
    public partial class form_dynamic : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // 动态创建控件
        // 注意：这段代码需要每次加载页面都执行，因此不能放在 if(!IsPostBack) 逻辑判断中
        protected void Page_Init(object sender, EventArgs e)
        {
            // 创建一个 FormRow 控件并添加到 Form2
            FormRow row = new FormRow();
            row.ID = "rowUser";
            Form2.Rows.Add(row);

            
            TextBox tbxUser = new TextBox();
            tbxUser.ID = "tbxUserName";
            tbxUser.Text = "";
            tbxUser.Label = "用户名";
            tbxUser.ShowLabel = true;
            tbxUser.ShowRedStar = true;
            tbxUser.Required = true;
            row.Items.Add(tbxUser);


            DropDownList ddlGender = new DropDownList();
            ddlGender.ID = "ddlGender";
            ddlGender.Label = "性别（自动回发）";
            ddlGender.Items.Add("男", "0");
            ddlGender.Items.Add("女", "1");
            ddlGender.SelectedIndex = 0;
            ddlGender.AutoPostBack = true;
            ddlGender.SelectedIndexChanged += new EventHandler(ddlGender_SelectedIndexChanged);
            row.Items.Add(ddlGender);

        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            FormRow rowUser = Form2.FindControl("rowUser") as FormRow;
            DropDownList ddlGender = rowUser.FindControl("ddlGender") as DropDownList;

            Alert.ShowInTop("选择的性别：" + ddlGender.SelectedText);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            FormRow rowUser = Form2.FindControl("rowUser") as FormRow;
            TextBox tbxUserName = rowUser.FindControl("tbxUserName") as TextBox;
            DropDownList ddlGender = rowUser.FindControl("ddlGender") as DropDownList;

            Alert.ShowInTop("用户名：" + tbxUserName.Text + "  性别：" + ddlGender.SelectedText);
        }
    }
}
