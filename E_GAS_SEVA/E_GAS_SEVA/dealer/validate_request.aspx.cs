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
    public partial class validate_request : System.Web.UI.Page
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
                    }
                }

                if (!IsPostBack)
                {
                    GetData();
                    SetData();
                }
            }
        }

        private void GetData()
        {
            customer_keeper ck = new customer_keeper();
            ArrayList arr = ck.GetDataByDealerFiltered (int.Parse(Session["dealer_id"].ToString()))    ;

            ArrayList del = new ArrayList(); 

            SqlDataAdapter da = (SqlDataAdapter ) arr[0];
            DataSet ds = (DataSet ) arr[1];
            
            
            /*foreach (DataRow dr in del)
            {
                dr.Delete();
                continue; 
            }*/

            Session["da"] = da;
            Session["ds"] = ds;


        }

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chk = ((CheckBox)(GridView1.Rows[i].FindControl("CheckBox1")));
                if (chk.Checked)
                {
                    GridViewRow gr = GridView1.Rows[i];
                    int id = int.Parse(((Label)(gr.FindControl("Label7"))).Text);
                    customer_keeper ck = new customer_keeper();
                    customer_class cc = ck.GetData(id);
                    cc._status = "Accepted";
                    cc._dealer_id = int.Parse(Session["dealer_id"].ToString());
                    cc._renewal = DateTime.Today.AddMonths(12);
                    ck.update(cc); 
                    GetData();
                    SetData();

                }
            }
        }
    }
}