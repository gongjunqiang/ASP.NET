using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo03
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//如果是第一次请求
            {
                //讲conuter初始化为0，保存在ViewState中
                ViewState["Counter"] = 0;
            }
        }

        //private int i = 0;

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    i++;
        //    this.Literal1.Text = i.ToString();
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            var counter = (int)ViewState["Counter"];
            counter++;
            this.Literal1.Text = counter.ToString();
            ViewState["Counter"] = counter;//将counter的值重新赋值给 ViewState["Counter"] 
        }

    }
}