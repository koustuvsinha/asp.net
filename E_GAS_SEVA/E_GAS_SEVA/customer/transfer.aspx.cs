using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections; 

namespace E_GAS_SEVA
{
    public partial class transfer : System.Web.UI.Page
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
                        customer_keeper ck = new customer_keeper();
                        customer_class cc = ck.GetData(int.Parse(Session["user_id"].ToString()));
                        Session["customer"] = cc;
                        TextBox1.Text = cc._id.ToString();
                        TextBox2.Text = cc._dist;

                        if (cc._status.Equals("PENDING"))
                        {
                            Label9.Text = "Sorry, but your account is not yet active! Please wait for your dealer to verify!";
                            Button1.Enabled = false;
                        }

                    }
                }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedItem.ToString() == TextBox2.Text) { Label8.Text = "you cannot change to the same dealer!"; }
            else {
                dealer_keeper dk = new dealer_keeper();
                int id = dk.GetDealerID(DropDownList3.SelectedItem.ToString());
                port_keeper pk = new port_keeper();
                int id1 = pk.get_id();
                pk.insert(id1, int.Parse(TextBox1.Text), id,TextBox3.Text );
                Label8.Text = "Porting id generated = " + id1; 
                
            }
        }
    }
}