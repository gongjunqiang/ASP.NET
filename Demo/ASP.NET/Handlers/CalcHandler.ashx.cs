using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP.NET.Handlers
{
    /// <summary>
    /// CalcHandler 的摘要说明
    /// </summary>
    public class CalcHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var num1 = context.Request.Params["num1"];
            var num2 = context.Request.Params["num2"];
            var result = Convert.ToInt32(num1) + Convert.ToInt32(num2);
            //context.Response.Write(num1+"+"+num2+"="+result);

            string sss = @"<!DOCTYPE html>
                        <html>
                        <head> <title>计算</title></head>
                        <body>
                             <form action = '../Handlers/CalcHandler.ashx' method = 'post'>
                                <input name = 'num1' type = 'text' value='{0}'
                                     /> +<input name = 'num2' type = 'text' value='{1}' 
                                     />=<input name = 'result' type = 'text' value='{2}'
                                     /><input name = "" type = 'submit' value = '计算' />
                            </form>
                        </body> 
                        </html>";
            sss = string.Format(sss, num1, num2, result);
            context.Response.Write(sss);
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