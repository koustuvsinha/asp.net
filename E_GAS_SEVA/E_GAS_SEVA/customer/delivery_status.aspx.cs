using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class delivery_status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession)
            {
                Response.Redirect("~/cust_login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    if (Session["logged"] == null)
                    {
                        Session["logged"] = 0;
                        Session["user"] = "";
                        Session["user_id"] = 0;
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();
                        TextBox1.Text = (Session["user_id"].ToString());
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            order_cust_keeper ok = new order_cust_keeper();
            string res = ok.GetStatus(int.Parse(TextBox2.Text));
            if (res.Equals("error")) Label5.Text = "Order Not Found!";
            else TextBox3.Text = res; 
        }
    }
}