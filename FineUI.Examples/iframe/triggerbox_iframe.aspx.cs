using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class triggerbox_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                TriggerBox1.OnClientTriggerClick = Window1.GetSaveStateReference(TriggerBox1.ClientID, HiddenField1.ClientID)
                    + Window1.GetShowReference("./triggerbox_iframe_iframe.aspx");


                TriggerBox2.OnClientTriggerClick = Window2.GetSaveStateReference(TriggerBox2.ClientID, HiddenField2.ClientID)
                   + Window2.GetShowReference("./triggerbox_iframe_iframe.aspx");

            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }

        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("触发了 Window1 的关闭事件！");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("第一个触发器输入框的值是：{0} <br/>第一个隐藏输入框的值是：{1}", TriggerBox1.Text, HiddenField1.Text));
        }


        protected void Window2_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("触发了 Window2 的关闭事件！");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("第二个触发器输入框的值是：{0}<br/>第二个隐藏输入框的值是：{1}", TriggerBox2.Text, HiddenField2.Text));
        }


    }
}
