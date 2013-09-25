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
    public partial class view_complaints : System.Web.UI.Page
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
            complaint_keeper  ck = new complaint_keeper ();
            ArrayList arr = ck.GetData(int.Parse(Session["dealer_id"].ToString()));



            Session["da"] = arr[0];
            Session["ds"] = arr[1];

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
                    int id = int.Parse(((Label)(gr.FindControl("Label1"))).Text);
                    complaint_keeper ck = new complaint_keeper();
                    ck.update_status(id); 
                    
                    GetData();
                    SetData();

                }
            }
        }
    }
}