using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP.NET.Handlers
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var userName = context.Request.Params["uname"];

            var userPwd = context.Request.Params["upwd"];

            var result = SysAdminService.UserLogin(userName, userPwd);
            if (result)
            {
                context.Response.Write("登录成功");
            }
            else
            {
                context.Response.Write("用户名或密码错误！");
            }

        }

        public bool IsReusable//是否自动缓存此对象，以供下次使用
        {
            get
            {
                return false;
            }
        }
    }
}