using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;  
using System.Collections; 

namespace E_GAS_SEVA.dealer
{
    public partial class oredr_request : System.Web.UI.Page
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
                        Session["dealer_id"] = 0;
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();
                        
                        GetData(int.Parse(Session["dealer_id"].ToString()));
                        SetData();
                    }
                }
            }
        }

        private void GetData(int id)
        {
            order_cust_keeper od = new order_cust_keeper();
            ArrayList arr = od.GetData_Dealer(id); 

            Session["da"] = arr[0];
            Session["ds"] = arr[1];
            SetData();

        }




        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chk = ((CheckBox)(GridView1.Rows[i].FindControl("CheckBox1")));
                if (chk.Checked)
                {
                    GridViewRow gr = GridView1.Rows[i];
                    int id = int.Parse(((Label)(gr.FindControl("Label2"))).Text);
                      
                    
                    order_cust_keeper odk = new order_cust_keeper();
                    order_cust oc = odk.GetData1(id);
                      
                    oc._status = "Accepted";
                    odk.update(oc); 
 
                    GetData(int.Parse(Session["dealer_id"].ToString()));
                    SetData();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            GetData(int.Parse(Session["dealer_id"].ToString()));
            SetData();
        }
    }
}