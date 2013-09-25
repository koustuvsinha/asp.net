using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace E_GAS_SEVA
{
    public partial class Customer_Care : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["comp_type"] = "Un-Delivered";
                if (Session["logged"] == null)
                {
                    Session["logged"] = 0;
                    Session["user"] = "";
                    Session["user_id"] = 0;
                }

                if (int.Parse(Session["logged"].ToString()) == 1)
                {
                    user.Text = Session["user"].ToString();
                    TextBox3.Text = (Session["user_id"].ToString());
                    customer_keeper ck = new customer_keeper();
                    customer_class cc = ck.GetData(int.Parse(Session["user_id"].ToString()));
                    TextBox4.Text = cc._dealer_id.ToString ();
                    Session["cc"] = cc; 
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                complaint_keeper ck = new complaint_keeper();
                customer_class cc = (customer_class)(Session["cc"]);   
                ck.insert(ck.get_id(), int.Parse(TextBox3.Text), Session["comp_type"].ToString(), TextBox2.Text, cc._dealer_id );
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Un-Delivered";
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Booking Issue";
            RadioButton1.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Payment Issue";
            RadioButton2.Checked = false;
            RadioButton1.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Malfunction";
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton1.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Service Issue";
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton1.Checked = false;
            RadioButton6.Checked = false;

        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            Session["comp_type"] = "Others";
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton1.Checked = false;

        }
    }
}