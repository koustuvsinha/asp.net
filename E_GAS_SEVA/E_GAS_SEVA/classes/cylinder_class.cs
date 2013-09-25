using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class cylinder_class
    {
        int id;
        public int _id
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
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
        int use_count;
        public int _use_count
        {
            get
            {
                return use_count;
            }
            set
            {
                use_count = value;
            }
        }
        int dealer_id;
        public int _dealer_id
        {
            get
            {
                return dealer_id;
            }
            set
            {
                dealer_id = value;
            }
        }
    }
}