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
    public partial class cust_database : System.Web.UI.Page
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
                        SetData();
                    }
                }

            }
        }

        private void GetData()
        {
            customer_keeper ck = new customer_keeper();
            ArrayList arr = ck.GetDataByDealer(int.Parse(Session["dealer_id"].ToString())) ;



            Session["da"] = arr[0];
            Session["ds"] = arr[1];

        }

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();

        }
    }
}