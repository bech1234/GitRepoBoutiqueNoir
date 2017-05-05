using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        { 
            List<int> cart = (List<int>)Session["cart"];
            GridView1.DataSource = cart;
            GridView1.DataBind();
        }
    }
}