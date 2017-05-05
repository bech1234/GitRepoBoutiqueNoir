using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Brands : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddToCartButton_Click1(object sender, EventArgs e)
    {
        {

            MembershipUser User = Membership.GetUser();


            if (User == null)
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                List<int> cart = new List<int>();
                if (Session["cart"] != null)
                {
                    cart = (List<int>)Session["cart"];
                }

                string itemIdStr = ListView1.SelectedDataKey.Value.ToString();


                int itemId = Convert.ToInt32(itemIdStr);
                cart.Add(itemId);
                Session["cart"] = cart;
            }

        }
        

    }

}