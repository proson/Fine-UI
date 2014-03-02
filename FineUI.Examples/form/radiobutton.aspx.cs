using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class radiobutton : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSelectSingleRadio_Click(object sender, EventArgs e)
        {
            rbtnSingleRadio.Checked = !rbtnSingleRadio.Checked;
        }

        protected void btnSelectSecondRadio_Click(object sender, EventArgs e)
        {
            String[] radios = new String[] { "rbtnFirst", "rbtnSecond", "rbtnThird" };

            for (int i = 0; i < radios.Length; i++)
            {
                if ((SimpleForm1.FindControl(radios[i]) as RadioButton).Checked)
                {
                    int next = i + 1;
                    if (next >= radios.Length)
                    {
                        next = 0;
                    }
                    (SimpleForm1.FindControl(radios[next]) as RadioButton).Checked = true;

                    break;
                }
            }
        }


        protected void rbtnAuto_CheckedChanged(object sender, CheckedEventArgs e)
        {
            // 单选框按钮的CheckedChanged事件会触发两次，一次是取消选中的菜单项，另一次是选中的菜单项；
            // 不处理取消选中菜单项的事件，从而防止此函数重复执行两次
            if (!e.Checked)
            {
                return;
            }

            string checkedValue = String.Empty;
            if (rbtnFirstAuto.Checked)
            {
                checkedValue = rbtnFirstAuto.Text;
            }
            else if (rbtnSecondAuto.Checked)
            {
                checkedValue = rbtnSecondAuto.Text;
            }
            else if (rbtnThirdAuto.Checked)
            {
                checkedValue = rbtnThirdAuto.Text;
            }

            Alert.ShowInTop("单选框选中项：" + checkedValue);
        }

    }
}
