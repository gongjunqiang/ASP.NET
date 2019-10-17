using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)//首次加载
            {
                this.txt1.Text = "请输入内容";
            }
            else//回发
            {
                //编写回发处理的工作
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            this.txt2.Text = this.txt1.Text;
 
        }
    }
}