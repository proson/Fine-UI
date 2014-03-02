using System;
using System.Collections.Generic;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples.autocomplete
{
    /// <summary>
    /// search 的摘要说明
    /// </summary>
    public class search : IHttpHandler
    {
        private static readonly string[] LANGUAGES = new string[]{
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
        };

        public void ProcessRequest(HttpContext context)
        {
            //System.Threading.Thread.Sleep(2000);

            String term = context.Request.QueryString["term"];
            if (!String.IsNullOrEmpty(term))
            {
                term = term.ToLower();

                JArray ja = new JArray();
                foreach (string lang in LANGUAGES)
                {
                    if (lang.ToLower().Contains(term))
                    {
                        ja.Add(lang);
                    }
                }


                context.Response.ContentType = "text/plain";
                context.Response.Write(ja.ToString());
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
}