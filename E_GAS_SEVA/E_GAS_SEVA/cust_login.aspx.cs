using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class cust_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string user = TextBox1.Text ; 
                string pass = TextBox2.Text ; 
                int id = int.Parse(user);
                customer_keeper dk = new customer_keeper();
                int ch = dk.search_user(id, pass);
                if (ch == 1)
                {
                    Session["logged"] = 1;
                    Session["user"] = "Customer ID : " + id.ToString();
                    Session["user_id"] = id;
                    customer_class cc = dk.GetData(id);
                    Session["dealer_id"] = cc._dealer_id; 
                
                Response.Redirect("~/customer/account_history.aspx");
                }
                else if (ch == 2)
                {
                    Session["logged"] = 0;
                    Label3.Text = "This account has not been verified yet.";
                }
                else
                {
                    Session["logged"] = 0;
                    Label3.Text = "Invalid Username or Password";
                }
        }
    }
}