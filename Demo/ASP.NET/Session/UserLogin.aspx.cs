using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo04
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var uname = this.name.Text.Trim();
            var pwd = this.pwd.Text.Trim(); ;
            if (uname == "龚老师" && pwd == "123456")
            {
                Session["CurrentUser"] = uname;
                Response.Redirect("Default.aspx");
              
            }
            else
            {
                this.msg.Text = "用户名或者密码错误！";
            }
        }
    }
}