using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_GAS_SEVA
{
    public class dealer_manager
    {
        public int add_cylinder(int id,int count)
        {
            cylinder_comp_keeper ck = new cylinder_comp_keeper();
            cylinder_dealer_keeper dk = new cylinder_dealer_keeper();
            if (ck.get_count() == 0)
            {
                return 0;
            }
            else
            {
                for (int i = 0; i < count; i++)
                {
                    cylinder_class cyl = ck.extract();
                    ck.update(cyl._id, id);
                    dk.insert(cyl, id);
                }
                return 1;
            }
        }
    }
}