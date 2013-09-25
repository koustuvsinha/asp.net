using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections; 

namespace E_GAS_SEVA
{
    public class dealer_keeper
    {
        public void insert(int id, string name, string address, string city, string state, string pincode, string password,string contact)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");
            DataRow dr = ds.Tables[0].NewRow();
            dr[0] = id;
            dr[1] = name;
            dr[2] = address;
            dr[3] = city ;
            dr[4] = state;
            dr[5] = pincode;
            dr[6] = 0;
            dr[7] = password;
            dr[8] = "PENDING";
            dr[9] = contact; 

            ds.Tables[0].Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);



        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public void delete(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("delete from dealer where dealer_id = @var1", con);
            con.Open();

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public ArrayList GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            ArrayList arr = new ArrayList();

            
                arr.Add(da);
                arr.Add(ds);
           
            return arr;



        }

        public ArrayList GetData_Filter()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if(dr[8].ToString().Equals("Accepted")) {
                    dr.Delete(); 
                }
            }

            arr.Add(da);
            arr.Add(ds);

            return arr;



        }

        public ArrayList GetData(string city)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer",con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            ArrayList arr = new ArrayList();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if((dr[3].ToString() != city)||(dr[8].ToString() == "PENDING")) 
                dr.Delete(); 
            }

            arr.Add(da);
            arr.Add(ds);
            return arr;
 
        }

        public ArrayList GetDataList(string city)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer",con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            ArrayList arr = new ArrayList();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[3].ToString() == city)&&(dr[8].ToString() != "PENDING") )
                {
                    arr.Add(dr[1].ToString());  
                }
            }
            return arr;
        }

        public int search_user(int user,string password) 
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((int.Parse(dr[0].ToString()) == user) && (dr[7].ToString() == password)&&(dr[8].ToString()!="PENDING") ) return 1; 
            }
            return 0;
        }

        public ArrayList GetDealer(string city)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");
            ArrayList arr = new ArrayList(); 

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[3].ToString() == city) && (dr[8].ToString() != "PENDING"))
                {
                    arr.Add(dr[1].ToString()); 
                }
                    
            }
            return arr;

        }


        public ArrayList populate_dist(string city)
        {
            ArrayList arr = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[3].ToString() == city) && (dr[8].ToString() != "PENDING"))
                {
                    arr.Add((dr[1]).ToString());
                }
            }
            return arr;
        }

        public int GetDealerID(string dealer)
        {
            ArrayList arr = new ArrayList();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[1].ToString() == dealer)
                {
                    return int.Parse(dr[0].ToString());  
                }
            }
            return 0;
        }

        public dealer_class GetFullDealerData(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            dealer_class dc = new dealer_class();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    dc._id = int.Parse (dr[0].ToString ());
                    dc._name = dr[1].ToString ();
                    dc._address = dr[2].ToString();
                    dc._city = dr[3].ToString();
                    dc._state = dr[4].ToString();
                    dc._pincode = dr[5].ToString();
                    dc._stock_no = int.Parse (dr[6].ToString()) ;
                    dc._password = dr[7].ToString();
                    dc._status = dr[8].ToString ();
                    dc._contact = dr[9].ToString(); 
                }
            }
            return dc;
        }

        public void update_count(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            cylinder_dealer_keeper cdk = new cylinder_dealer_keeper();
            int stock = cdk.count(id);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    dr.BeginEdit();
                    dr[6] = stock;
                    dr.EndEdit();
                }

            }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);

        }

        public void update(dealer_class dc)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from dealer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "dealer");

            cylinder_dealer_keeper cdk = new cylinder_dealer_keeper();
            dc._stock_no = cdk.count(dc._id);  

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == dc._id)
                {
                    dr.BeginEdit();
                    dr[1] = dc._name;
                    dr[2] = dc._address;
                    dr[3] = dc._city;
                    dr[4] = dc._state;
                    dr[5] = dc._pincode;
                    dr[6] = dc._stock_no;
                    dr[7] = dc._password;
                    dr[8] = dc._status; 
                    dr[9] = dc._contact;
                    dr.EndEdit();
                }

            }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);
        }

    }
}