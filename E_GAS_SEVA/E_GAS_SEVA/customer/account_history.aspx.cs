using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;  

namespace E_GAS_SEVA
{
    public partial class account_history : System.Web.UI.Page
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
                        Label3.Text = cc._renewal.ToString();
                        Label5.Text = cc._subsidy_count.ToString();
                        Label7.Text = cc._booking_count.ToString();
                        dealer_keeper dk = new dealer_keeper();
                        dealer_class dc = dk.GetFullDealerData(cc._dealer_id);
                        Label9.Text = dc._name.ToString() + ", " + dc._city + ", " + dc._state;    
                        GetData(int.Parse(Session["user_id"].ToString()));
                        SetData();
                    }
                }
            }
        }

        private void GetData(int id)
        {
            order_cust_keeper od = new order_cust_keeper();
            ArrayList arr = od.GetData(id);

            Session["da"] = arr[0];
            Session["ds"] = arr[1];
            SetData();

        }

            
        

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();
        }

    }
}