
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    RenderCheckField.cs
 * CreatedOn:   2013-05-18
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Text;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Data;
using System.Reflection;
using System.Web.UI.WebControls;


namespace FineUI
{
    /// <summary>
    /// 表格可编辑复选框列
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class RenderCheckField : RenderBaseField
    {
        #region Properties


        #endregion

        #region GetColumnValue

        internal override string GetColumnValue(GridRow row)
        {
            string text = String.Empty;

            if (!String.IsNullOrEmpty(DataField))
            {
                object value = row.GetPropertyValue(DataField);

                if (value == null)
                {
                    text = "false";
                }
                else
                {
                    text = value.ToString().ToLower();
                }
            }

            return text;
        }

        #endregion

        #region OnFirstPreRender

        /// <summary>
        /// 渲染 HTML 之前调用（页面第一次加载或者普通回发）
        /// </summary>
        protected override void OnFirstPreRender()
        {
            base.OnFirstPreRender();

            if (Grid.AllowCellEditing)
            {
                OB.AddProperty("xtype", "checkcolumn");

                if (Grid.EnableAfterEditEvent)
                {
                    string validateScript = "var args='AfterEdit$'+rowIndex+'$"+ ColumnID +"';";
                    validateScript += Grid.GetPostBackEventReference("#AfterEdit#").Replace("'#AfterEdit#'", "args");

                    string checkchangeScript = String.Format("function(checkcolumn,rowIndex,checked){{{0}}}", validateScript);

                    OB.Listeners.AddProperty("checkchange", checkchangeScript,true);
                }
            }

            string jsContent = String.Format("var {0}={1};", XID, OB.ToString());
            AddGridColumnScript(jsContent);
            
        }



        #endregion

    }
}



