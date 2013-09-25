using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class manage_cylinder : System.Web.UI.Page
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
                    cylinder_comp_keeper ck = new cylinder_comp_keeper();
                    TextBox1.Text = (ck.get_count()).ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cylinder_comp_keeper ck = new cylinder_comp_keeper();
            int id = ck.get_id(); 
            ck.insert(id);
            TextBox2.Text = id.ToString();
            TextBox1.Text = (ck.get_count()).ToString();  
  
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cylinder_comp_keeper ck = new cylinder_comp_keeper();
            ck.delete(int.Parse(TextBox3.Text));
            TextBox1.Text = (ck.get_count()).ToString();
            Label4.Text = "Cylinder ID " + TextBox3.Text + " deleted!"; 
            TextBox3.Text = ""; 
            
        }

        
    }
}