using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class update_account : System.Web.UI.Page
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
                        TextBox2.Text = cc._name;
                        TextBox3.Text = cc._pass;
                        TextBox5.Text = cc._email;
                        TextBox6.Text = cc._contact;
                    }
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            customer_keeper ck = new customer_keeper();
            customer_class cc = ck.GetData(int.Parse(TextBox1.Text));

            if (CheckBox1.Checked)
            {
                cc._pass = TextBox3.Text;
            }
            cc._email = TextBox5.Text;
            cc._contact = TextBox6.Text;
            ck.update(cc);
            Label8.Text = "Account Successfully Updated!";  
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            TextBox3.ReadOnly = false; 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/update_account.aspx"); 
        }
    }
}