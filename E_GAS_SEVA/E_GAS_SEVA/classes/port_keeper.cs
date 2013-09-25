using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class port_keeper
    {
        public void insert(int id,int customer_id,int dealer_id,string new_address)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from porting", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "porting");
            DataRow dr = ds.Tables[0].NewRow();
            dr[0] = id;
            dr[1] = customer_id;
            dr[2] = "PENDING";
            dr[3] = dealer_id;
            dr[4] = new_address; 

            ds.Tables[0].Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);
        }



        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from porting", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "porting");
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
            ArrayList arr = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from porting", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "porting");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString() == "Accepted")||(int.Parse(dr[3].ToString()) != id  ))
                {
                    dr.Delete();
                    continue; 
                }
            }

            arr.Add(da);
            arr.Add(ds);
            return arr;
        }

        public port_class GetDataFull(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from porting", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "porting");

            port_class pc = new port_class();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    pc._porting_id = id;
                    pc._customer_id = int.Parse(dr[1].ToString());
                    pc._status = dr[2].ToString();
                    pc._new_dist_id = int.Parse(dr[3].ToString());
                    pc._new_address = dr[4].ToString();
                    break;
                }
            }
            return pc;
        }

        public void update(port_class pc)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from porting", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "porting");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (pc._porting_id == int.Parse(dr[0].ToString()))
                {
                    dr.BeginEdit(); 
                    dr[1] = pc._customer_id;
                    dr[2] = pc._status ;
                    dr[3] = pc._new_dist_id;
                    dr[4] = pc._new_address;
                    dr.EndEdit(); 
                }
            }

            
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);
        }
    }
}