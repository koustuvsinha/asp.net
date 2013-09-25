using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;   

namespace E_GAS_SEVA
{
    public partial class assign_cylinder : System.Web.UI.Page
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
                    Session["da"] = null;
                    Session["ds"] = null;
                }   
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox count = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBox1")));
            ((DataSet)Session["ds"]).Tables[0].Rows[e.RowIndex][6] = int.Parse (count.Text);

            TextBox idn = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBox2")));
            ((DataSet)Session["ds"]).Tables[0].Rows[e.RowIndex][0] = int.Parse(idn.Text);

            int x = int.Parse(count.Text);
            int id = int.Parse(idn.Text);

            dealer_keeper dk = new dealer_keeper ();
            dealer_class dc = dk.GetFullDealerData(id);

            if (x < dc._stock_no)
            {
                Label3.Text = "Error! Cannot update lesser amount!";
            }
            else
            {
                x = x - dc._stock_no; 
                dealer_manager dm = new dealer_manager();
                int v = dm.add_cylinder(id, x);
                dk.update_count(id); 
                if (v == 0) Label3.Text = "Sorry. Stock Empty! Refill Stock Now!";
                else
                {

                    SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
                    ((SqlDataAdapter)Session["da"]).Update((DataSet)Session["ds"], "dealer");
                }
            }
            GetData(Session["city"].ToString());
            GridView1.EditIndex = -1;
            SetData();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData(Session["city"].ToString()  );
            SetData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            SetData();
        }

        /*private void GetData()
        {
            dealer_keeper ck = new dealer_keeper();
            ArrayList arr = ck.GetData();

            Session["da"] = arr[0];
            Session["ds"] = arr[1];


        }*/

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();

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
            Session["city"] = city;
            GetData(city); 
            SetData(); 
        }

        protected void GetData(string city)
        {
            dealer_keeper dk = new dealer_keeper();
            

            ArrayList arr = dk.GetData(city);
            Session["da"] = arr[0];
            Session["ds"] = arr[1];
        }

    }
}