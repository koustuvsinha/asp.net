﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;  

namespace E_GAS_SEVA
{
    public partial class search_dist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                }
            }
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
            dealer_keeper dk = new dealer_keeper();

            ArrayList arr = dk.GetData(city);
            Session["da"] = arr[0];
            Session["ds"] = arr[1];
            SetData(); 
        }

        private void SetData()
        {
            GridView1.DataSource = ((DataSet)Session["ds"]).Tables[0];
            GridView1.DataBind();
        }
    }
}