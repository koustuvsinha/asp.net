using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_GAS_SEVA
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["logged"] == null)
                {
                    Session["logged"] = 0;
                    Session["user"] = "";
                    Session["user_id"] = 0;
                    Session["dealer_id"] = 0;
                }

                if (int.Parse(Session["logged"].ToString()) == 1)
                {
                    user.Text = Session["user"].ToString();
                }
            }
        }
    }
}