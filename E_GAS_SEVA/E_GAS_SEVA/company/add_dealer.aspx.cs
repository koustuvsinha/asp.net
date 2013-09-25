using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;

namespace E_GAS_SEVA.company
{
    public partial class add_dealer : System.Web.UI.Page
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
                if (!IsPostBack)
                {
                    GetData();
                    SetData();
                }
            }
        }

        private void GetData()
        {
            dealer_keeper ck = new dealer_keeper();
            ArrayList arr = ck.GetData_Filter();

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
            for (int i = 0; i < GridView1.Rows.Count;i++ )
            {
                CheckBox chk = ((CheckBox)(GridView1.Rows[i].FindControl("CheckBox1")));
                if (chk.Checked)
                {
                    GridViewRow gr = GridView1.Rows[i];
                    int id = int.Parse(((Label)(gr.FindControl("Label1"))).Text);
                    SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
                    SqlCommand cmd = new SqlCommand("update dealer set status='Accepted' where dealer_id=@v1", con);
                    cmd.Parameters.AddWithValue("@v1", id);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GetData();
                    SetData();

                }
            }
        }
    }
}