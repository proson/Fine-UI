using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FineUI.Examples
{
    public partial class icons : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadData();
            }
        }
        
        //private void LoadData()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    int index = 0;
        //    sb.Append("<table><tr>");
        //    foreach (string icon in Enum.GetNames(typeof(FineUI.IconType)))
        //    {
        //        //string iconName = FineUI.IconTypeName.GetName((FineUI.IconType)Enum.Parse(typeof(FineUI.IconType), icon));
        //        //string iconUrl = FineUI.ResourceHelper.GetWebResourceUrl(Page, String.Format("FineUI.res.box.icons.{0}", iconName));
        //        FineUI.IconType iconType = (FineUI.IconType)Enum.Parse(typeof(FineUI.IconType), icon);

        //        if (iconType != FineUI.IconType.None)
        //        {
        //            string iconUrl = FineUI.IconTypeName.GetIconUrl(iconType);
        //            sb.AppendFormat("<td><span style=\"padding-left:20px;background-image:url({0});background-repeat:no-repeat;\">{1}</span></td>", iconUrl, icon);
        //        }

        //        if (index % 5 == 0 && index != 0)
        //        {
        //            sb.Append("</tr><tr>");
        //        }

        //        index++;
        //    }
        //    sb.Append("</tr><table>");
        //    litIcons.Text = sb.ToString();
        //}
        
    }
}
