using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Reflection;
using System.IO;
using System.Drawing.Imaging;

namespace FineUI
{
    /// <summary>
    /// 资源处理程序
    /// </summary>
    public class ResourceHandler : IHttpHandler
    {
        /// <summary>
        /// 处理资源的请求
        /// </summary>
        /// <param name="context">Http请求上下文</param>
        public void ProcessRequest(HttpContext context)
        {
            string type = String.Empty;
            string typeValue = String.Empty;
            string extjsBasePath = GlobalConfig.GetJSBasePath();
            //resName = "FineUI.";


            if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["icon"]))
            {
                type = "icon";
            }
            //else if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["js"]))
            //{
            //    type = "js";
            //    //resName += "js." + typeValue;
            //}
            //else if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["lang"]))
            //{
            //    type = "lang";
            //    //resName += "js.lang." + typeValue;
            //}
            else if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["theme"]))
            {
                // res.axd?theme=default.grid.refresh.gif
                type = "theme";
                //resName += "res.theme." + typeValue;
            }
            //else if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["css"]))
            //{
            //    type = "css";
            //    //resName += "res.css." + typeValue;
            //}
            else if (!String.IsNullOrEmpty(typeValue = context.Request.QueryString["img"]))
            {
                type = "img";
                //resName += "res.img." + typeValue;
            }
            else
            {
                context.Response.Write("Not supported!");
                return;
            }

            //byte[] binary;
            switch (type)
            {
                case "icon":
                    if (!typeValue.EndsWith(".png") && !typeValue.EndsWith(".gif"))
                    {
                        typeValue = IconHelper.GetName((Icon)Enum.Parse(typeof(Icon), typeValue));
                    }
                    //resName += "res.icon." + typeValue;
                    string serverPath = String.Format("{0}/{1}", GlobalConfig.GetIconBasePath(), typeValue);
                    context.Response.WriteFile(context.Server.MapPath(serverPath));

                    context.Response.ContentType = "image/" + GetImageFormat(typeValue);
                    break;
                //case "js":
                //    context.Response.Write(ResourceHelper.GetResourceContent(resName));
                //    context.Response.ContentType = "text/javascript";
                //case "lang":
                //    context.Response.Write(ResourceHelper.GetResourceContent(resName));
                //    context.Response.ContentType = "text/javascript";
                //    break;
                //case "css":
                //    context.Response.Write(ResourceHelper.GetResourceContent(resName));
                //    context.Response.ContentType = "text/css";
                //    break;
                case "theme":
                    string themePath = "";
                    string themeImageFormat = "";
                    int lastDotIndex = typeValue.LastIndexOf(".");
                    if (lastDotIndex >= 0)
                    {
                        themePath = typeValue.Substring(0, lastDotIndex).Replace('.', '/');
                        themeImageFormat = typeValue.Substring(lastDotIndex + 1);
                    }

                    context.Response.WriteFile(context.Server.MapPath(String.Format("{0}/res/images/{1}.{2}", extjsBasePath, themePath, themeImageFormat)));

                    context.Response.ContentType = "image/" + GetImageFormat(typeValue);
                    break;
                case "img":
                    //binary = ResourceHelper.GetResourceContentAsBinary(resName);
                    //context.Response.OutputStream.Write(binary, 0, binary.Length);
                    //context.Response.ContentType = "image/" + GetImageFormat(resName);
                    

                    context.Response.WriteFile(context.Server.MapPath(String.Format("{0}/res/images/{1}", extjsBasePath, typeValue)));

                    context.Response.ContentType = "image/" + GetImageFormat(typeValue);
                    break;
            }


            // 缓存一年，只能通过改变 URL 来强制更新缓存
            context.Response.Cache.SetExpires(DateTime.Now.AddYears(1));
            context.Response.Cache.SetCacheability(HttpCacheability.Public);
        }

        //private void RenderImage(HttpContext context, string resName)
        //{
        //    Assembly assembly = Assembly.GetExecutingAssembly();
        //    using (Stream stream = assembly.GetManifestResourceStream(resName))
        //    {
        //        using (System.Drawing.Image image = System.Drawing.Image.FromStream(stream))
        //        {
        //            // PNG输出时出现“GDI+ 中发生一般性错误”
        //            using (MemoryStream ms = new MemoryStream())
        //            {
        //                image.Save(ms, image.RawFormat);
        //                ms.WriteTo(context.Response.OutputStream);
        //                context.Response.ContentType = "image/" + GetImageFormat(image.RawFormat);
        //            }
        //        }
        //    }
        //}

        private string GetImageFormat(string imageName)
        {
            int lastDotIndex = imageName.LastIndexOf(".");
            if (lastDotIndex >= 0)
            {
                return imageName.Substring(lastDotIndex + 1);
            }
            return "png";
        }

        private string GetImageFormat(ImageFormat format)
        {
            if (format == ImageFormat.Bmp)
            {
                return "bmp";
            }
            else if (format == ImageFormat.Gif)
            {
                return "gif";
            }
            else if (format == ImageFormat.Jpeg)
            {
                return "jpeg";
            }
            else if (format == ImageFormat.Png)
            {
                return "png";
            }
            else if (format == ImageFormat.Tiff)
            {
                return "tiff";
            }
            else if (format == ImageFormat.Icon)
            {
                return "icon";
            }
            return "gif";
        }


        /// <summary>
        /// 只要请求的 URL 相同，则请求可以重用
        /// </summary>
        public bool IsReusable
        {
            get
            {
                return true;
            }
        }
    }
}
