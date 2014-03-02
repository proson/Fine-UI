<%@ WebHandler Language="C#" Class="image" %>

using System;
using System.Web;
using System.IO;

public class image : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/png";

        try
        {
            string physicalFilePath = context.Server.MapPath(String.Format("~/images/16/{0}.png", context.Request.QueryString["id"]));

            if (File.Exists(physicalFilePath))
            {
                context.Response.TransmitFile(physicalFilePath);
                context.Response.End();
            }
        }
        catch (Exception)
        {
            context.Response.ContentType = "text/html";
            context.Response.Write("Error!");
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}