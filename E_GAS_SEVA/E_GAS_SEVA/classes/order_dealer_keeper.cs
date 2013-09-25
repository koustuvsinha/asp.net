using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class order_dealer_keeper
    {
        public void insert(int id, int dealer_id, int order_qty)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("insert into order_from_dealer_to_company values (@var1,@var2,@var3,@var4,@var5)", con);
            con.Open();



            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", dealer_id);
            cmd.Parameters.AddWithValue("@var3", DateTime.Today);
            cmd.Parameters.AddWithValue("@var4", "PENDING");
            cmd.Parameters.AddWithValue("@var5", order_qty);

            cmd.ExecuteNonQuery();

            con.Close();

        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_dealer_to_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_dealer_to_company");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public ArrayList GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from order_from_dealer_to_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "order_from_dealer_to_company");
            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[3].ToString() == "Accepted")
                {
                    dr.Delete();
                    continue; 
                }
            }
            
            arr.Add(da);
            arr.Add(ds);
            return arr;
        }

        public void update_status(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("update order_from_dealer_to_company set status='Accepted' where order_id=@var", con);
            con.Open();



            cmd.Parameters.AddWithValue("@var", id);
            
            cmd.ExecuteNonQuery();

            con.Close();
        }

        
    }
}