using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET
{
    public partial class CalcDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCal_Click(object sender, EventArgs e)
        {
            int nun1 = Convert.ToInt32(this.txtnum1.Text.Trim());
            int nun2 = Convert.ToInt32(this.txtnum2.Text.Trim());
            this.result.Text = (nun1 + nun2).ToString();

        }
    }
}