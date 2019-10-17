using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo06
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.Ita.Text = "您是本网站第"+Application["UserVisit"].ToString() +"位访问者!"+"当前在线人数："+
                    Application["CurrentUsers"].ToString()+"sessionId="+Session.SessionID;
            }
        }

        //清除当前用户的session
        protected void btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            this.Ita.Text = "sessionId="+Session.SessionID;
        }
    }
}