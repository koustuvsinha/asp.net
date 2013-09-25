using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class port_class
    {
        int porting_id;
        public int _porting_id
        {
            get
            {
                return porting_id;
            }
            set
            {
                porting_id = value;
            }
        }
        int customer_id;
        public int _customer_id
        {
            get
            {
                return customer_id;
            }
            set
            {
                customer_id = value;
            }
        }
        string status;
        public string _status
        {
            get
            {
                return status;
            }
            set
            {
                status = value;
            }
        }
        int new_dist_id;
        public int _new_dist_id
        {
            get
            {
                return new_dist_id;
            }
            set
            {
                new_dist_id = value;
            }
        }
        string new_address;
        public string _new_address
        {
            get
            {
                return new_address;
            }
            set
            {
                new_address = value;
            }
        }

    }
}