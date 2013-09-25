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
    public partial class cylinder_data : System.Web.UI.Page
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
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (int.Parse(TextBox1.Text) != 0)
            {
                GetData(int.Parse(TextBox1.Text));
                SetData();
            }
            else
            {
                GetData(0);
                SetData(); 
            }
        }

        private void GetData(int ch)
        {
            if (ch != 0)
            {
                cylinder_dealer_keeper cd = new cylinder_dealer_keeper();
                ArrayList arr = cd.GetData(ch) ;

                Session["da"] = arr[0];
                Session["ds"] = arr[1];
            }
            else
            {
                cylinder_comp_keeper ck = new cylinder_comp_keeper();
                ArrayList arr = ck.GetData(ch);

                Session["da"] = arr[0];
                Session["ds"] = arr[1];

            }
        }

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();
        }

    }
}