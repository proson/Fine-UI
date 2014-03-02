using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples.data
{
    public partial class shengshixian : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSheng();
                BindShi();
                BindXian();
            }
        }
        
        
        private void BindSheng()
        {
            ddlSheng.DataSource = SHENG_JSON;
            ddlSheng.DataBind();

            ddlSheng.Items.Insert(0, new ListItem("选择省份", "-1"));
            ddlSheng.SelectedValue = "-1";
        }

        private void BindShi()
        {
            string sheng = ddlSheng.SelectedValue;

            if (sheng != "-1")
            {
                JArray ja = SHI_JSON.Value<JArray>(sheng);
                ddlShi.DataSource = ja;
                ddlShi.DataBind();
            }

            ddlShi.Items.Insert(0, new ListItem("选择地区市", "-1"));
            ddlShi.SelectedValue = "-1";
        }

        private void BindXian()
        {
            string shi = ddlShi.SelectedValue;

            if (shi != "-1")
            {
                JArray ja = XIAN_JSON.Value<JArray>(shi);
                ddlXian.DataSource = ja;
                ddlXian.DataBind();
            }

            ddlXian.Items.Insert(0, new ListItem("选择县级市", "-1"));
            ddlXian.SelectedValue = "-1";
        }

        protected void ddlSheng_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlShi.Items.Clear();
            BindShi();

            ddlXian.Items.Clear();
            BindXian();
        }

        protected void ddlShi_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlXian.Items.Clear();
            BindXian();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            labResult.Text = "您选择为：" + ddlSheng.SelectedValue + " | " + ddlShi.SelectedValue + (ddlXian.SelectedValue == "-1" ? "" : " | " + ddlXian.SelectedValue);
        }

    }
}
