using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA.dealer
{
    public partial class cylinder_stock : System.Web.UI.Page
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
                    }
                }

                cylinder_dealer_keeper cd = new cylinder_dealer_keeper();
                int d = cd.count(int.Parse(Session["dealer_id"].ToString()));
                TextBox1.Text = d.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cylinder_dealer_keeper cd = new cylinder_dealer_keeper();
            int d = cd.count(int.Parse(Session["dealer_id"].ToString()));
            TextBox1.Text = d.ToString(); 
        }
    }
}