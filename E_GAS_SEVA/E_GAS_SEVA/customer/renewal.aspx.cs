using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class view_subsidy : System.Web.UI.Page
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
                        TextBox1.Text = Session["user_id"].ToString();
                        customer_keeper ck = new customer_keeper();
                        customer_class cc = ck.GetData(int.Parse(Session["user_id"].ToString()));
                        Session["customer"] = cc;
                        TextBox2.Text = cc._renewal.ToString();
                        if (DateTime.Today < cc._renewal) Button1.Enabled = false;
                    }
                }
            }
        }
    }
}