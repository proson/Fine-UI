
#region Comment

/*
 * Project��    FineUI
 * 
 * FileName:    ConfigSection.cs
 * CreatedOn:   2008-04-07
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description��
 *      ->
 *   
 * History��
 *       
 * 
 * 
 * 
 * 
 */

#endregion


using System;
using System.Configuration;

namespace FineUI
{
    /// <summary>
    /// FineUI��Web.config�е����ý�
    /// </summary>
    public class ConfigSection : ConfigurationSection
    {
        /// <summary>
        /// ����
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.THEME, DefaultValue = ConfigPropertyValue.THEME_DEFAULT)]
        public string Theme
        {
            get
            {
                return (string)base[ConfigPropertyName.THEME];
            }
            set
            {
                base[ConfigPropertyName.THEME] = value;
            }
        }

        /// <summary>
        /// ����
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.LANGUAGE, DefaultValue = ConfigPropertyValue.LANGUAGE_DEFAULT)]
        public string Language
        {
            get
            {
                return (string)base[ConfigPropertyName.LANGUAGE];
            }
            set
            {
                base[ConfigPropertyName.LANGUAGE] = value;
            }
        }

        /// <summary>
        /// ����֤��Ϣ����ʾλ��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FROMMESSAGETARGET, DefaultValue = ConfigPropertyValue.FORM_MESSAGETARGET_DEFAULT_STRING)]
        public string FormMessageTarget
        {
            get
            {
                return (string)base[ConfigPropertyName.FROMMESSAGETARGET];
            }
            set
            {
                base[ConfigPropertyName.FROMMESSAGETARGET] = value;
            }
        }

        /// <summary>
        /// ���б�ǩ��λ��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMLABELALIGN, DefaultValue = ConfigPropertyValue.FORM_LABELALIGN_DEFAULT_STRING)]
        public string FormLabelAlign
        {
            get
            {
                return (string)base[ConfigPropertyName.FORMLABELALIGN];
            }
            set
            {
                base[ConfigPropertyName.FORMLABELALIGN] = value;
            }
        }

        /// <summary>
        /// ���ؼ��Ҳ����߽�ľ���
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMOFFSETRIGHT, DefaultValue = ConfigPropertyValue.FORM_OFFSETRIGHT_DEFAULT)]
        public int FormOffsetRight
        {
            get
            {
                return (int)base[ConfigPropertyName.FORMOFFSETRIGHT];
            }
            set
            {
                base[ConfigPropertyName.FORMOFFSETRIGHT] = value;
            }
        }

        /// <summary>
        /// ���ؼ���ǩ�Ŀ��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMLABELWIDTH, DefaultValue = ConfigPropertyValue.FORM_LABELWIDTH_DEFAULT)]
        public int FormLabelWidth
        {
            get
            {
                return (int)base[ConfigPropertyName.FORMLABELWIDTH];
            }
            set
            {
                base[ConfigPropertyName.FORMLABELWIDTH] = value;
            }
        }

        /// <summary>
        /// ���ؼ���ǩ�ķָ���
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMLABELSEPARATOR, DefaultValue = ConfigPropertyValue.FORM_LABELSEPARATOR_DEFAULT)]
        public string FormLabelSeparator
        {
            get
            {
                return (string)base[ConfigPropertyName.FORMLABELSEPARATOR];
            }
            set
            {
                base[ConfigPropertyName.FORMLABELSEPARATOR] = value;
            }
        }

        /// <summary>
        /// ����AJAX
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEAJAX, DefaultValue = ConfigPropertyValue.ENABLE_AJAX_DEFAULT)]
        public bool EnableAjax
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEAJAX];
            }
            set
            {
                base[ConfigPropertyName.ENABLEAJAX] = value;
            }
        }

        /// <summary>
        /// ����AJAX������ʾ��Ϣ
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEAJAXLOADING, DefaultValue = ConfigPropertyValue.ENABLE_AJAX_LOADING_DEFAULT)]
        public bool EnableAjaxLoading
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEAJAXLOADING];
            }
            set
            {
                base[ConfigPropertyName.ENABLEAJAXLOADING] = value;
            }
        }

        /// <summary>
        /// AJAX��ʾ��Ϣ������
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.AJAXLOADINGTYPE, DefaultValue = ConfigPropertyValue.AJAX_LOADING_TYPE_DEFAULT)]
        public string AjaxLoadingType
        {
            get
            {
                return (string)base[ConfigPropertyName.AJAXLOADINGTYPE];
            }
            set
            {
                base[ConfigPropertyName.AJAXLOADINGTYPE] = value;
            }
        }

        /// <summary>
        /// �ͻ���AJAX��ʱʱ��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.AJAXTIMEOUT, DefaultValue = ConfigPropertyValue.AJAX_TIMEOUT_DEFAULT)]
        public int AjaxTimeout
        {
            get
            {
                return (int)base[ConfigPropertyName.AJAXTIMEOUT];
            }
            set
            {
                base[ConfigPropertyName.AJAXTIMEOUT] = value;
            }
        }

        /// <summary>
        /// �Ƿ����ô����壨��ExtJS����11px�����Ϊ12px��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEBIGFONT, DefaultValue = false)]
        public bool EnableBigFont
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEBIGFONT];
            }
            set
            {
                base[ConfigPropertyName.ENABLEBIGFONT] = value;
            }
        }

        /// <summary>
        /// �Ƿ����õ���ģʽ
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.DEBUGMODE, DefaultValue = false)]
        public bool DebugMode
        {
            get
            {
                return (bool)base[ConfigPropertyName.DEBUGMODE];
            }
            set
            {
                base[ConfigPropertyName.DEBUGMODE] = value;
            }
        }

        /// <summary>
        /// JS�ļ������ڵĸ�Ŀ¼
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.JSBASEPATH, DefaultValue = ConfigPropertyValue.EXTJS_BASE_PATH_DEFAULT)]
        public string JSBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.JSBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.JSBASEPATH] = value;
            }
        }

        /// <summary>
        /// ͼ�����ڵĸ�Ŀ¼
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ICONBASEPATH, DefaultValue = ConfigPropertyValue.ICON_BASE_PATH_DEFAULT)]
        public string IconBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.ICONBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.ICONBASEPATH] = value;
            }
        }

        /// <summary>
        /// �Զ����������ڵĸ�Ŀ¼
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.CUSTOMTHEMEBASEPATH, DefaultValue = ConfigPropertyValue.CUSTOM_THEME_BASE_PATH_DEFAULT)]
        public string CustomThemeBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.CUSTOMTHEMEBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.CUSTOMTHEMEBASEPATH] = value;
            }
        }

        /// <summary>
        /// �Զ�����������
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.CUSTOMTHEME, DefaultValue = ConfigPropertyValue.CUSTOM_THEME_DEFAULT)]
        public string CustomTheme
        {
            get
            {
                return (string)base[ConfigPropertyName.CUSTOMTHEME];
            }
            set
            {
                base[ConfigPropertyName.CUSTOMTHEME] = value;
            }
        }

        /// <summary>
        /// �Ƿ�����FStateѹ����Ĭ��Ϊtrue��
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEXSTATECOMPRESS, DefaultValue = ConfigPropertyValue.ENABLE_XSTATE_COMPRESS)]
        public bool EnableFStateCompress
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEXSTATECOMPRESS];
            }
            set
            {
                base[ConfigPropertyName.ENABLEXSTATECOMPRESS] = value;
            }
        }

    }
}
