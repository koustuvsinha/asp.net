using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class city_keeper
    {
        public void insert(int id, string city,int state_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("insert into city values (@var1,@var2,@var3)", con);
            con.Open();



            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", city);
            cmd.Parameters.AddWithValue("@var3",state_id );

            cmd.ExecuteNonQuery();

            con.Close();

        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from city", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "city");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public ArrayList populate_state()
        {
            ArrayList arr = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from state_data", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "state_data");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                arr.Add((dr[1]).ToString());  
            }
            return arr;
        }

        public ArrayList populate_city(string st)
        {
            ArrayList arr = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from city", con);
            DataSet ds = new DataSet();


            da.Fill(ds, "city");
            
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString()) == st)
                {   
                    arr.Add((dr[1]).ToString());
                }
            }
            return arr;
        }
    }
}