using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA.dealer
{
    public partial class request_cylinder : System.Web.UI.Page
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
                        Session["dealer_id"] = 0;
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();


                        order_dealer_keeper odk = new order_dealer_keeper();
                        int id = odk.get_id();
                        TextBox1.Text = id.ToString();
                        cylinder_dealer_keeper cdk = new cylinder_dealer_keeper();
                        int empty = cdk.count_empty(int.Parse(Session["dealer_id"].ToString()));
                        TextBox3.Text = empty.ToString();
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int order =0;
            if (TextBox2.Text == "") order = 0;
            else order = int.Parse(TextBox2.Text);
            order_dealer_keeper odk = new order_dealer_keeper();
            odk.insert(int.Parse(TextBox1.Text), int.Parse(Session["dealer_id"].ToString()), order);
            Label3.Text = "Your Order has been submitted!"; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cylinder_dealer_keeper cdk = new cylinder_dealer_keeper();
            cdk.refill(int.Parse(Session["dealer_id"].ToString()));
            Response.Redirect("~/dealer/request_cylinder.aspx"); 
        }
    }
}