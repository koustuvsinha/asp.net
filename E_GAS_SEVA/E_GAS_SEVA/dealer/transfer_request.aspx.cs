using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;  

namespace E_GAS_SEVA.dealer
{
    public partial class transfer_request : System.Web.UI.Page
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
                        Session["dealer_id"] = 0;
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();
                        GetData();
                        
                    }
                }
            }
        }

        private void GetData()
        {
            port_keeper pk = new port_keeper();


            ArrayList arr = pk.GetData(int.Parse(Session["dealer_id"].ToString())   );

            if (arr.Count == 0)
            {
                Label3.Text = "No transfer requests";
            }
            else
            {



                Session["da"] = arr[0];
                Session["ds"] = arr[1];
                SetData();
            }


        }

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chk = ((CheckBox)(GridView1.Rows[i].FindControl("CheckBox1")));
                if (chk.Checked)
                {
                    GridViewRow gr = GridView1.Rows[i];
                    int customer_id = int.Parse(((Label)(gr.FindControl("Label2"))).Text);
                    int porting_id = int.Parse(((Label)(gr.FindControl("Label1"))).Text);
                    customer_keeper ck = new customer_keeper();
                    customer_class cc = ck.GetData(customer_id );
                    dealer_keeper dk = new dealer_keeper();
                    
                    port_keeper pk = new port_keeper();
                    port_class pc = pk.GetDataFull(porting_id);
                    cc._address = pc._new_address;
                    cc._dealer_id = pc._new_dist_id;
                    dealer_class dc = dk.GetFullDealerData(pc._new_dist_id);
                    cc._dist = dc._name; 
                    pc._status = "Accepted";
                    pk.update(pc);
                    ck.update(cc);
                    GetData();
                    

                }
            }
        }

        
    }
}