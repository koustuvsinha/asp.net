using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections; 

namespace E_GAS_SEVA
{
    public partial class new_connection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DropDownList1.Items.Clear()   ;
                DropDownList1.Items.Add("Select");   
                city_keeper ck = new city_keeper();
                ArrayList arr = ck.populate_state();
                foreach (object o in arr)
                {
                    if (o.GetType() == typeof(string))
                    {
                        string st = (string)o;
                        DropDownList1.Items.Add(st);
                    }
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text =="" ) || (TextBox3.Text == "") || (TextBox4.Text == "") || (TextBox5.Text == "") || (TextBox6.Text == "") || (TextBox7.Text == "") || (DropDownList1.SelectedItem.ToString() == "Select") || (DropDownList2.SelectedItem.ToString() == "Select") || (DropDownList3.SelectedItem.ToString() == "Select"))
            {

                Label13.Text = "Error in submitting application! Please resubmit!";
            }
            else
            {

                customer_keeper ck = new customer_keeper();
                int id = ck.get_id();
                customer_class cc = new customer_class();
                cc._id = id;
                cc._name = TextBox1.Text;
                cc._father = TextBox4.Text;
                cc._address = TextBox3.Text;
                cc._email = TextBox2.Text;
                cc._contact = TextBox6.Text;
                cc._dist = DropDownList3.SelectedItem.ToString();
                cc._pin = TextBox5.Text;
                cc._dob = TextBox7.Text;  

                dealer_keeper dk = new dealer_keeper();
                int dealer = dk.GetDealerID(cc._dist);
                cc._dealer_id = dealer;

                ck.insert(cc);

                Label12.Text = "Your New connection request has been submitted for Validation.";
                Label13.Text = "Customer ID " + id.ToString();

            }
            
        }

        
      

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Select");
            city_keeper ck = new city_keeper();
            ArrayList arr = ck.populate_city(DropDownList1.SelectedItem.ToString());
            foreach (object o in arr)
            {
                if (o.GetType() == typeof(string))
                {
                    string st = (string)o;
                    DropDownList2.Items.Add(st);
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string city = DropDownList2.SelectedItem.Text;
            dealer_keeper dk = new dealer_keeper();

            ArrayList arr = dk.GetDataList(city);
            foreach (string s in arr)
            {
                DropDownList3.Items.Add(s);
            }
        }

       

        
    }
}