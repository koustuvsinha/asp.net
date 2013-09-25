using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class comp_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["logged"] == null)
                {
                    Session["logged"] = 0;
                    Session["user"] = "";
                }

                if (int.Parse(Session["logged"].ToString()) == 1)
                {
                    user.Text = Session["user"].ToString();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            string pass = TextBox2.Text;

            if (user == "admin" && pass == "admin")
            {
                Session["logged"] = 1;
                Session["user"] = "admin";
                Response.Redirect("~/company/view_cust_data.aspx");
            }
            else if (user != "admin")
            {
                int id = int.Parse(user);
                dealer_keeper dk = new dealer_keeper();
                int ch = dk.search_user(id, pass);
                if (ch == 1)
                {
                    Session["logged"] = 1;
                    Session["user"] = "Dealer ID :" + id.ToString();
                    Session["dealer_id"] = id;
                    Response.Redirect("~/dealer/oredr_request.aspx");
                }
                else
                {
                    Label3.Text = "Invalid UserName or Password/Your Dealership account might not be verified till now";
                    Session["logged"] = 0;
                }

            }
            else
            {
                Session["logged"] = 0;
 
            }
            
        }
    }
}