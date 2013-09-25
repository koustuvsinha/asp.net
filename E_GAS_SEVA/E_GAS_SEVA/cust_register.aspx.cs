using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class cust_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["cc"] = new customer_class();  
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);
            customer_manager cm = new customer_manager();
            int res = cm.register_check(id);
            if (res == 1)
            {
                customer_class cc = cm.getdata(id);
                TextBox2.Text = cc._name;
                TextBox3.Text = cc._address;
                Session["cc"] = cc;
                TextBox4.ReadOnly = false;
                Button2.Enabled = true; 
  
            }
            else if (res == 0)
            {
                Label5.Text = "This customer has already registered!";
                TextBox4.ReadOnly = true;
                Button2.Enabled = false;
            }
            else
            {
                Label5.Text = "Error retrieving data!";
                TextBox4.ReadOnly = true;
                Button2.Enabled = false;
 
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            customer_keeper ck = new customer_keeper();
            string pass = TextBox4.Text;
            
            customer_class cc = (customer_class)Session["cc"];
            cc._pass = pass;
            ck.update(cc);
            Label5.Text = "Customer Registered!"; 
        }
    }
}