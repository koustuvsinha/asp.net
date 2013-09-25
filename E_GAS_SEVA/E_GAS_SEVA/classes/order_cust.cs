using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class order_cust
    {
        int order_id;
        public int _order_id
        {
            get
            {
                return order_id;
            }
            set
            {
                order_id = value;
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
        DateTime order_date;
        public DateTime _order_date
        {
            get
            {
                return order_date;
            }
            set
            {
                order_date = value;
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
        int cylinder_id;
        public int _cylinder_id
        {
            get
            {
                return cylinder_id;
            }
            set
            {
                cylinder_id = value;
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