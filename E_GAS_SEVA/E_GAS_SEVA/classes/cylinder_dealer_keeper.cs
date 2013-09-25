using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 


namespace E_GAS_SEVA
{
    public class cylinder_dealer_keeper
    {
        public void insert(cylinder_class c,int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("insert into cylinder_at_dealer values (@var1,@var2,@var3,@var4,@var5)", con);
            con.Open();




            cmd.Parameters.AddWithValue("@var1", c._id );
            cmd.Parameters.AddWithValue("@var2", DateTime.Today);
            cmd.Parameters.AddWithValue("@var3", "FULL");
            cmd.Parameters.AddWithValue("@var4", c._use_count);
            cmd.Parameters.AddWithValue("@var5", id);

            cmd.ExecuteNonQuery();

            con.Close();

        }

        public void delete(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("delete from cylinder_at_dealer where cylinder_id = @var1", con);
            con.Open();

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public int count(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_dealer");
            int ct = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString() == "FULL")&&(int.Parse(dr[4].ToString ())==id )) ct++;    
            }
            
            return ct;

        }

        
        public ArrayList GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_dealer");

            ArrayList arr = new ArrayList();

            
                arr.Add(da);
                arr.Add(ds);
           
            return arr;



        }

        public ArrayList GetData(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_dealer");

            ArrayList arr = new ArrayList();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[4].ToString()) != id)
                {
                    dr.Delete();
                    continue; 
                }
            }


            arr.Add(da);
            arr.Add(ds);

            return arr;



        }

        public int assign(int dealer_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_dealer");
            int id = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString() == "FULL")&&(int.Parse(dr[4].ToString()) == dealer_id))
                {
                    id = int.Parse(dr[0].ToString());
                    update(id);
                    break;
                }
            }
            return id;
        }

        public void update(int id)
        {
            int used_count = get_used_count(id); 
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("update cylinder_at_dealer set status = 'EMPTY',used_count = @var2 where cylinder_id = @var1", con);

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", (used_count + 1));   
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close(); 
        }

        public int get_used_count(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("select used_count from cylinder_at_dealer where cylinder_id = @var", con);

            cmd.Parameters.AddWithValue("@var", id);
            con.Open();
            int used_count = int.Parse( (cmd.ExecuteScalar()).ToString ());
            con.Close();
            return used_count; 
        }

        public void refill(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("update cylinder_at_dealer set status = 'FULL' where dealer_id = @var", con);

            cmd.Parameters.AddWithValue("@var", id);
            con.Open();
            cmd.ExecuteNonQuery(); 
            con.Close();
            
        }
        public int count_empty(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_dealer");
            int ct = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString() == "EMPTY") && (int.Parse(dr[4].ToString()) == id)) ct++;
            }

            return ct;

        }
    }
}