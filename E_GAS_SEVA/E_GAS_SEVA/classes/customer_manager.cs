using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class customer_manager
    {
        public int register_check(int id)
        {
            customer_keeper ck = new customer_keeper();
            string res = ck.get_pass(id);
            if (res == "empty") return 1;
            else if (res == "error") return 2;
            else return 0;
        }

        public customer_class getdata(int id)
        {
            customer_keeper ck = new customer_keeper();
            return ck.GetData(id); 
        }
    }
}