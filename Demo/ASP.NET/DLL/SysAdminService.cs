using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP.NET
{
    public class SysAdminService
    {
        public static bool UserLogin(string userName, string userPwd)
        {
            if (userName == "龚老师" && userPwd == "123456")
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}