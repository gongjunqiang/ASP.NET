using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo05
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null)
                {
                    Response.Write("用户名=" + Request.Cookies["UserName"].Value);
                }
                if (Request.Cookies["UserPhone"] != null)
                {
                    Response.Write("电话=" + Request.Cookies["UserPhone"].Value);
                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //方法一：保存Cookie并设置有效期
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(1.0);
            Response.Cookies["UserName"].Value = this.text1.Text.Trim();
            //方法二：保存Cookie并设置有效期
            HttpCookie cookie = new HttpCookie("UserPhone", "12345678");
            cookie.Expires = DateTime.Now.AddDays(1.0);

            Response.Cookies.Add(cookie);
        }
    }
}