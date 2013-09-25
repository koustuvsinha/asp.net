using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class order_cust_keeper
    {
        public void insert(int id,int customer_id,int cylinder_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("insert into order_from_customer_to_dealer values (@var1,@var2,@var3,@var4,@var5,@var6)", con);
            con.Open();

            customer_keeper ck = new customer_keeper();
            customer_class cc = ck.GetData(customer_id); 

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", customer_id);
            cmd.Parameters.AddWithValue("@var3", DateTime.Today);
            cmd.Parameters.AddWithValue("@var4", "PENDING");
            cmd.Parameters.AddWithValue("@var5", cylinder_id );
            cmd.Parameters.AddWithValue("@var6", cc._dealer_id);   

            cmd.ExecuteNonQuery();

            con.Close();

        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_customer_to_dealer");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public ArrayList GetData(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_customer_to_dealer");
            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[1].ToString()) != id)
                {
                    dr.Delete();
                }

            }
            arr.Add(da);
            arr.Add(ds);
            return arr;
        }

        public ArrayList GetData_Dealer(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_customer_to_dealer");
            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((int.Parse(dr[5].ToString()) != id))
                {
                    dr.Delete();

                }
                else if ((dr[3].ToString().Equals("Accepted")))
                {
                    dr.Delete();
                }

            }
            arr.Add(da);
            arr.Add(ds);
            return arr;
        }

        public string GetStatus(int order_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_customer_to_dealer");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString())==order_id)   
                {

                    return dr[3].ToString(); 
                }
                
            }
            return "error";
        }

        public order_cust GetData1(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_dealer_to_company");
            order_cust oc = new order_cust();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    oc._order_id = id;
                    oc._customer_id = int.Parse(dr[1].ToString());
                    oc._order_date = (DateTime)dr[2];
                    oc._status = dr[3].ToString();
                    oc._cylinder_id = int.Parse(dr[4].ToString());
                    oc._dealer_id = int.Parse(dr[5].ToString());
                }
            }
            return oc;
        }

        public void update(order_cust oc)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_customer_to_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_dealer_to_company");


            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == oc._order_id)
                {
                    dr.BeginEdit();
                    dr[1] = oc._customer_id;
                    dr[2] = oc._order_date;
                    dr[3] = oc._status;
                    dr[4] = oc._cylinder_id;
                    dr[5] = oc._dealer_id;
                    dr.EndEdit();
                }
            }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);

        }
    }
}