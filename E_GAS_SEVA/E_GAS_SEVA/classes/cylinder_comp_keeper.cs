using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 


namespace E_GAS_SEVA
{
    public class cylinder_comp_keeper
    {
        public void insert(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand  cmd = new SqlCommand ("insert into cylinder_at_company values (@var1,@var2,@var3,@var4,@var5)", con);
            con.Open();

           

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", DateTime.Today.ToString("dd/MM/yyyy"));
            cmd.Parameters.AddWithValue("@var3", "FULL");
            cmd.Parameters.AddWithValue("@var4", 0);
            cmd.Parameters.AddWithValue("@var5", 0);

            cmd.ExecuteNonQuery();

            con.Close(); 

        }
        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_company");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public int get_count()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_company");
            int id = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[2].ToString() == "FULL") && (int.Parse(dr[4].ToString()) == 0))
                {
                    id++;
                }
            }
            return id;
        }

        public void delete(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("delete from cylinder_at_company where cylinder_id = @var1", con);
            con.Open();

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.ExecuteNonQuery();

            con.Close(); 
        }

        public cylinder_class  extract()
        {
            if (get_count() != 0)
            {
                cylinder_class cyl = new cylinder_class();
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
                SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_company", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "cylinder_at_company");
                int ct = 0;
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if ((dr[2].ToString() == "FULL") && (int.Parse(dr[4].ToString()) == 0))
                    {
                        cyl._id = int.Parse(dr[0].ToString());
                        cyl._status = dr[2].ToString();
                        cyl._use_count = int.Parse(dr[3].ToString());
                        cyl._dealer_id = 0;

                        ct++;
                        if (ct == 1) break; 
                    }
                    
                }
                  
                return cyl;
            }
            else
            {
                return new cylinder_class();
            }
 
        }

        public ArrayList GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_company");

            ArrayList arr = new ArrayList();


            arr.Add(da);
            arr.Add(ds);

            return arr;



        }

        public ArrayList GetData(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from cylinder_at_company", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cylinder_at_company");

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

        public void update(int id, int dealer_id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("update cylinder_at_company set dealer_id = @var2 where cylinder_id = @var1", con);
            con.Open();

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.Parameters.AddWithValue("@var2", dealer_id);
            cmd.ExecuteNonQuery();

            con.Close(); 
        }
    }
}
