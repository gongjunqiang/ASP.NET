using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Demo04
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> products = new List<string>();
                Session["Cart"] = products;
            }
            if (Session["CurrentUser"] != null)
            {
                this.ItaMsg.Text = "欢迎您：" + Session["CurrentUser"].ToString();
            }
            else
            {
                this.ItaMsg.Text = "您还未登录！";
            }
        }

        protected void btnAddcCart_Click(object sender, EventArgs e)
        {
            Session["CurrentUser1"] = 2;
            if (Session["CurrentUser"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                foreach (Control item in form1.Controls)
                {
                    if (item is CheckBox)
                    {
                        CheckBox ckb = (CheckBox)item;
                        if (ckb.Checked)
                        {
                            ((List<string>)Session["Cart"]).Add(ckb.Text);
                        }
                    }
                }
                this.btnAddcCart.Text = "添加成功！";
            }

        
        }

        protected void btnDisplayCart_Click(object sender, EventArgs e)
        {


            Response.Redirect("ShoopingCart.aspx");
            
        }

        protected void btnLoginout_Click(object sender, EventArgs e)
        {
            Session.Abandon();//清除session
            this.ItaMsg.Text = "您还未登录！";
        }
    }
}