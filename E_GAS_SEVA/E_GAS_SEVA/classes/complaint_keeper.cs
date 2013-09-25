using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class complaint_keeper
    {
        public void insert(int id,int cust_id,string com_type,string comp_des,int dealer_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from complaint", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "complaint");
            DataRow dr = ds.Tables[0].NewRow();

            dr[0] = id;
            dr[1] = cust_id;
            dr[2] = com_type;
            dr[3] = comp_des;
            dr[4] = "PENDING";
            dr[5] = dealer_id; 

            ds.Tables[0].Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);
        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from complaint", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "complaint");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public ArrayList GetData(int dealer_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from complaint", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "complaint");

            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((int.Parse(dr[5].ToString()) != dealer_id)||(dr[4].ToString() == "RESOLVED")) 
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
            SqlCommand cmd = new SqlCommand("update complaint set status = 'RESOLVED' where complaint_id = @var", con);
            cmd.Parameters.AddWithValue("@var", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close(); 
        }

    }
}