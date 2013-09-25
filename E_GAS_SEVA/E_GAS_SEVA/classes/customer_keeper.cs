using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient; 
using System.Collections;   

namespace E_GAS_SEVA
{
    public class customer_keeper
    {
        public void insert(customer_class cc)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer",con);
            DataSet ds = new DataSet();
            da.Fill(ds,"customer");
            DataRow dr = ds.Tables[0].NewRow();
            dr[0] = cc._id;
            dr[1] = cc._name;
            dr[2] = cc._father;
            dr[3] = cc._address;
            dr[4] = "empty";
            dr[5] = cc._email;
            dr[6] = cc._contact;
            dr[7] = cc._dob;
            dr[8] = cc._pin;
            dr[9] = cc._dist;
            dr[10] = cc._dealer_id;
            dr[11] = 0;
            dr[12] = 6; 
            dr[13] = "PENDING";
            dr[14] = DateTime.Today.ToString("dd/MM/yyyy") ;  


            ds.Tables[0].Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);  
  
 
 
        }
        public ArrayList GetData()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            ArrayList arr = new ArrayList();
            arr.Add(da);
            arr.Add(ds);
            return arr;

            

        }

        public ArrayList GetDataByDealer(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((int.Parse(dr[10].ToString()) != id)||(dr[13].ToString() == "PENDING" ))
                {
                    dr.Delete();
                    continue; 
                }
            }

            arr.Add(da);
            arr.Add(ds);
            return arr;



        }

        public ArrayList GetDataByDealer(string name)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((dr[9].ToString() != name)||(dr[13].ToString() == "PENDING") )
                {
                    dr.Delete();
                    continue;
                }
            }

            arr.Add(da);
            arr.Add(ds);
            return arr;



        }

        public ArrayList GetDataByDealerFiltered(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            ArrayList arr = new ArrayList();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if ((int.Parse(dr[10].ToString()) != id)||(dr[13].ToString() !="PENDING")) 
                {
                    dr.Delete();
                    continue;
                }
            }

            arr.Add(da);
            arr.Add(ds);
            return arr;



        }

        public int get_id()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");
            int id = ds.Tables[0].Rows.Count;
            if (id == 0) { return id + 1; }
            else
            {
                DataRow dr = ds.Tables[0].Rows[id - 1];
                int id1 = int.Parse(dr[0].ToString());
                return id1 + 1;
            }
        }

        public string get_pass(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    if (dr[4].ToString () == "empty") return "empty";
                    else return dr[4].ToString(); 
                }
            }
            return "error";
        }

        public void delete(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("delete from customer where customer_id = @var1", con);
            con.Open();

            cmd.Parameters.AddWithValue("@var1", id);
            cmd.ExecuteNonQuery();

            con.Close(); 
        }

        public customer_class GetData(int id)
        {
            customer_class cc = new customer_class();
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == id)
                {
                    cc._id = id;
                    cc._name = dr[1].ToString();
                    cc._father = dr[2].ToString();
                    cc._address = dr[3].ToString();
                    cc._pass = dr[4].ToString();
                    cc._email = dr[5].ToString();
                    cc._contact = dr[6].ToString();
                    cc._dob = dr[7].ToString();
                    cc._pin = dr[8].ToString();
                    cc._dist = dr[9].ToString();
                    cc._dealer_id = int.Parse(dr[10].ToString());
                    cc._booking_count = int.Parse(dr[11].ToString());
                    cc._subsidy_count = int.Parse(dr[12].ToString());
                    cc._status = dr[13].ToString();
                    cc._renewal = (DateTime )dr[14] ;

                }
            }
            return cc;
        }

        public void update(customer_class cc)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (int.Parse(dr[0].ToString()) == cc._id)
                {
                    dr.BeginEdit();
                    dr[1] = cc._name;
                    dr[2] = cc._father;
                    dr[3] = cc._address;
                    dr[4] = cc._pass;
                    dr[5] = cc._email;
                    dr[6] = cc._contact;
                    dr[7] = cc._dob;
                    dr[8] = cc._pin;
                    dr[9] = cc._dist;
                    dr[10] = cc._dealer_id;
                    dr[11] = cc._booking_count;
                    dr[12] = cc._subsidy_count;
                    dr[13] = cc._status;
                    dr[14] = cc._renewal; 
                    dr.EndEdit(); 
                }

            }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(ds.Tables[0]);


        }

        public int search_user(int user, string password)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=egas;Integrated Security=True;Pooling=False");
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //if (dr[13].ToString() == "PENDING") return 2; 
                if ((int.Parse(dr[0].ToString()) == user) && (dr[4].ToString() == password)) return 1;
            }
            return 0;
        }
    }
}