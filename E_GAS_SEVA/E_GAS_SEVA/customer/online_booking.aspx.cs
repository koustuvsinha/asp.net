using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class online_booking : System.Web.UI.Page
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
                        Session["dealer_id"] = 0;
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();
                        TextBox1.Text = Session["user_id"].ToString();
                        customer_keeper ck = new customer_keeper();
                        customer_class cc = ck.GetData(int.Parse(Session["user_id"].ToString()));
                        TextBox2.Text = cc._name;
                        TextBox3.Text = cc._address;
                        if (cc._subsidy_count > 0) TextBox6.Text = "Rs 410/-";
                        else TextBox6.Text = "Rs 990/-";

                        if (cc._status.Equals("PENDING"))
                        {
                            Label8.Text = "Sorry, but your account is not yet active! Please wait for your dealer to verify!";
                            Button1.Enabled = false;
                        }

                    }


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            order_cust_keeper ok = new order_cust_keeper();
            cylinder_dealer_keeper ck = new cylinder_dealer_keeper();
            customer_keeper cust = new customer_keeper();
            customer_class cc = cust.GetData(int.Parse(Session["user_id"].ToString()));
            

            
            cc._booking_count++;
            if (cc._subsidy_count > 0)
            {
                cc._subsidy_count--;
            }

            int cylinder_id = ck.assign(cc._dealer_id );

            int id = ok.get_id(); 
            ok.insert(id, int.Parse(Session["user_id"].ToString()), cylinder_id);
            TextBox7.Text = cylinder_id.ToString ();
            TextBox4.Text = id.ToString() ;

            

            cust.update(cc);
  
 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}