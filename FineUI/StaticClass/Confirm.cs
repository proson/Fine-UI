
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    Confirm.cs
 * CreatedOn:   2008-06-30
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace FineUI
{
    /// <summary>
    /// 确认对话框帮助类（静态类）
    /// </summary>
    public static class Confirm
    {
        #region public static

        //public static string DefaultTitle = "确认对话框";

        /// <summary>
        /// 确认对话框默认图标
        /// </summary>
        public static MessageBoxIcon DefaultIcon = MessageBoxIcon.Question;


        #endregion

        #region Show

        /// <summary>
        /// 显示消息框
        /// </summary>
        /// <param name="message"></param>
        public static void Show(string message)
        {
            Show(message, null, DefaultIcon);
        }

        /// <summary>
        /// 显示消息框
        /// </summary>
        /// <param name="message"></param>
        /// <param name="title"></param>
        public static void Show(string message, string title)
        {
            Show(message, title, DefaultIcon);
        }

        /// <summary>
        /// 显示消息框
        /// </summary>
        /// <param name="message"></param>
        /// <param name="icon"></param>
        public static void Show(string message, MessageBoxIcon icon)
        {
            Show(message, null, icon);
        }

        /// <summary>
        /// 显示消息框
        /// </summary>
        /// <param name="message"></param>
        /// <param name="title"></param>
        /// <param name="icon"></param>
        public static void Show(string message, string title, MessageBoxIcon icon)
        {
            PageContext.RegisterStartupScript(GetShowReference(message, title, icon));
        }
        #endregion

        #region GetShowReference

        /// <summary>
        /// 获取显示确认对话框的客户端脚本
        /// </summary>
        /// <param name="message">对话框消息</param>
        /// <param name="title">对话框标题</param>
        /// <param name="icon">对话框图标</param>
        /// <returns>客户端脚本</returns>
        public static string GetShowReference(string message, string title, MessageBoxIcon icon)
        {
            return GetShowReference(message, title, icon, String.Empty, String.Empty);
        }

        /// <summary>
        /// 获取显示确认对话框的客户端脚本
        /// </summary>
        /// <param name="message">对话框消息</param>
        /// <param name="title">对话框标题</param>
        /// <param name="icon">对话框图标</param>
        /// <param name="okScriptstring">点击确定按钮执行的客户端脚本</param>
        /// <param name="cancelScript">点击取消按钮执行的客户端脚本</param>
        /// <returns>客户端脚本</returns>
        public static string GetShowReference(string message, string title, MessageBoxIcon icon, string okScriptstring, string cancelScript)
        {
            return GetShowReference(message, title, icon, okScriptstring, cancelScript, Target.Self);
        }

        /// <summary>
        /// 获取显示确认对话框的客户端脚本
        /// </summary>
        /// <param name="message">对话框消息</param>
        /// <param name="title">对话框标题</param>
        /// <param name="icon">对话框图标</param>
        /// <param name="okScript">点击确定按钮执行的客户端脚本</param>
        /// <param name="cancelScript">点击取消按钮执行的客户端脚本</param>
        /// <param name="target">弹出对话框的目标页面</param>
        /// <returns>客户端脚本</returns>
        public static string GetShowReference(string message, string title, MessageBoxIcon icon, string okScript, string cancelScript, Target target)
        {
            /*
                if (String.IsNullOrEmpty(title))
                {
                    title = "F.util.confirmTitle";
                }
                else
                {
                    title = JsHelper.GetJsString(title.Replace("\r\n", "\n").Replace("\n", "<br/>"));
                }
                message = message.Replace("\r\n", "\n").Replace("\n", "<br/>");


                JsObjectBuilder ob = new JsObjectBuilder();
                ob.AddProperty("title", title, true);
                ob.AddProperty("msg", JsHelper.GetJsStringWithScriptTag(message), true);
                ob.AddProperty("buttons", "Ext.MessageBox.OKCANCEL", true);
                ob.AddProperty("icon", String.Format("{0}", MessageBoxIconHelper.GetName(icon)), true);
                ob.AddProperty("fn", String.Format("function(btn){{if(btn=='cancel'){{{0}}}else{{{1}}}}}", cancelScript, okScriptstring), true);

                string targetName = "window";
                if (target != Target.Self)
                {
                    targetName = TargetHelper.GetScriptName(target);
                }
                return String.Format("{0}.Ext.MessageBox.show({1});", targetName, ob.ToString());
                */
            string scriptTitle = "''";
            if (!String.IsNullOrEmpty(title))
            {
                title = JsHelper.GetJsString(title.Replace("\r\n", "\n").Replace("\n", "<br/>"));
            }
            string scriptMessage = JsHelper.GetJsStringWithScriptTag(message.Replace("\r\n", "\n").Replace("\n", "<br/>"));

            string scriptIconName = "''";
            if (icon != MessageBoxIcon.Warning)
            {
                scriptIconName = String.Format("'{0}'", MessageBoxIconHelper.GetShortName(icon));
            }

            string scriptTargetName = "''";
            if (target != Target.Self)
            {
                scriptTargetName = String.Format("'{0}'", TargetHelper.GetName(target));
            }
            string scriptCancel = JsHelper.GetJsString(cancelScript);
            string scriptOK = JsHelper.GetJsString(okScript);

            if (scriptIconName == "''")
            {
                if (scriptCancel == "''")
                {
                    return String.Format("F.confirm({0},{1},{2},{3});", scriptTargetName, scriptTitle, scriptMessage, scriptOK);
                }
                else
                {
                    return String.Format("F.confirm({0},{1},{2},{3},{4});", scriptTargetName, scriptTitle, scriptMessage, scriptOK, scriptCancel);
                }
            }
            else
            {
                return String.Format("F.confirm({0},{1},{2},{3},{4},{5});", scriptTargetName, scriptTitle, scriptMessage, scriptOK, scriptCancel, scriptIconName);
            }

        }

        #endregion

    }
}
