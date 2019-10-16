using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo04
{
    public partial class ShoopingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> list = (List<string>)Session["Cart"];
            string str = String.Empty;
            foreach (var item in list)
            {
                str += item + "</br>";
            }
            Response.Write("购买商品："+str+ "</br>");
            Response.Write("sessionId:"+ Session.SessionID);
        }
    }
}