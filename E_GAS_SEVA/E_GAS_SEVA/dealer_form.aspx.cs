using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;  

namespace E_GAS_SEVA
{
    public partial class dealer_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear ();  
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text != "") || (TextBox2.Text != "") || (TextBox4.Text != "") || (TextBox5.Text != "") || (TextBox6.Text != "") || (TextBox7.Text != "") || (DropDownList1.SelectedItem.ToString() != "Select")&&(TextBox5.Text == TextBox6.Text))
            {
                dealer_keeper dk = new dealer_keeper();
                int id = dk.get_id();
                dk.insert(id, TextBox1.Text, TextBox2.Text, DropDownList2.SelectedItem.ToString(), DropDownList1.SelectedItem.ToString(), (TextBox4.Text), TextBox5.Text, TextBox7.Text);
                Label10.Text = "YOUR DEALERSHIP APPLICATION HAS BEEN SUBMITTED. YOUR DEALER ID = " + id.ToString();
            }
            else
            {
                Label10.Text = "ERROR IN SUBMITTING FORM";
            }
        }

        protected void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();  
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear(); 
        }
    }
}