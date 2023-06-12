using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
         

    }
    protected void Vehicle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["desc"].Value = "Vehicle";
        Response.Redirect("~/SubCatVehicle.aspx");
    }

    protected void Households_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["desc"].Value = "Household";
        Response.Redirect("~/SubCatHousehold.aspx");
    }

    protected void Animals_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["desc"].Value = "Animals";
        Response.Redirect("~/SubCatAnimal.aspx");
    }
}
