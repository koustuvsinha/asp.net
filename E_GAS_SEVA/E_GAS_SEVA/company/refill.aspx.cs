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
    public partial class refill : System.Web.UI.Page
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
                    }

                    if (int.Parse(Session["logged"].ToString()) == 1)
                    {
                        user.Text = Session["user"].ToString();
                        GetData();
                        SetData();
                    }
                }
            }
        }

        private void GetData() {

            order_dealer_keeper od = new order_dealer_keeper();
            ArrayList arr = od.GetData();
 
            Session["da"] = arr[0];
            Session["ds"] = arr[1];
            SetData(); 

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
                    int id_1 = int.Parse(((Label)(gr.FindControl("Label1"))).Text);
                    int id = int.Parse(((Label)(gr.FindControl("Label3"))).Text);
                    int x = int.Parse(((Label)(gr.FindControl("Label2"))).Text);
                    order_dealer_keeper odk = new order_dealer_keeper();
                    odk.update_status(id_1);
                    dealer_manager dm = new dealer_manager();
                    dealer_keeper dk = new dealer_keeper();
                    int v = dm.add_cylinder(id, x);
                    dk.update_count(id); 
                    GetData();
                    SetData();

                }
            }
        }


        


    }
}