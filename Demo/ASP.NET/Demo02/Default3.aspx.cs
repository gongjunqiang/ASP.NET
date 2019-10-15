using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo02
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("浏览器版本：");
            Response.Write(Request.ServerVariables["HTTP_USER_AGENT"].ToString());
            Response.Write("<br>浏览器的语言：");
            Response.Write(Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"].ToString());
        }
    }
}