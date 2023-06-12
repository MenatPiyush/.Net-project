using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_SubCatAnimal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Dog_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Dog";
        Response.Redirect("~/Description.aspx");
    }
    protected void Cat_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Cat";
        Response.Redirect("~/Description.aspx");
    }
    protected void Horse_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Horse";
        Response.Redirect("~/Description.aspx");
    }
    protected void Ship_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Ship";
        Response.Redirect("~/Description.aspx");
    }
    protected void Aquarium_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Aquerium";
        Response.Redirect("~/Description.aspx");
    }
    protected void Birds_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["animal"].Value = "Birds";
        Response.Redirect("~/Description.aspx");
    }
}