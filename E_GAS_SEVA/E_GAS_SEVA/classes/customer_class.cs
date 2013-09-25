using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class customer_class
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
        string name;
        public string _name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        string father;
        public string _father
        {
            get
            {
                return father;
            }
            set
            {
                father = value;
            }
        }
        string address;
        public string _address
        {
            get
            {
                return address;
            }
            set
            {
                address = value;
            }
        }
        string pass;
        public string _pass
        {
            get
            {
                return pass;
            }
            set
            {
                pass = value;
            }
        }
        string email;
        public string _email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        string contact;
        public string _contact
        {
            get
            {
                return contact;
            }
            set
            {
                contact = value;
            }
        }
        string dob;
        public string _dob
        {
            get
            {
                return dob;
            }
            set
            {
                dob = value;
            }
        }
        string pin;
        public string _pin
        {
            get
            {
                return pin;
            }
            set
            {
                pin = value;
            }
        }
        string dist;
        public string _dist
        {
            get
            {
                return dist;
            }
            set
            {
                dist = value;
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

        int booking_count;
        public int _booking_count
        {
            get
            {
                return booking_count;
            }
            set
            {
                booking_count = value;
            }
        }
        int subsidy_count;
        public int _subsidy_count
        {
            get
            {
                return subsidy_count;
            }
            set
            {
                subsidy_count = value;
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
        DateTime renewal;
        public DateTime _renewal
        {
            get
            {
                return renewal;
            }
            set
            {
                renewal = value;
            }
        }
    }
}