using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.ServerObject
{
    public partial class ServerObject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/ServerObject/NewPage.aspx");
        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ServerObject/NewPage.aspx");
        }
    }
}