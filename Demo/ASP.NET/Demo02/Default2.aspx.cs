using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo02
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //string name = Request.QueryString["name"];
            //string age = Request.QueryString["age"];

            string name = Request.Params["name"];
            string age = Request.Params["age"];

            this.TextBox1.Text = name;
            this.TextBox2.Text = age;


            Response.Write($"姓名{name}，年龄{age}");


            Response.Write("浏览器版本：");
            Response.Write(Request.ServerVariables["HTTP_USER_AGENT"].ToString());
            Response.Write("<br>浏览器的语言：");
            Response.Write(Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"].ToString());

        }
    }
}