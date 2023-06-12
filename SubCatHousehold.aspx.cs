using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubCatHousehold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Furnitures_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Furniture";
        Response.Redirect("~/Description.aspx");
    }
    protected void Home_Electronics_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Home Electronics";
        Response.Redirect("~/Description.aspx");
    }
    protected void Appliences_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Appliences";
        Response.Redirect("~/Description.aspx");
    }
    protected void Outdoor_Equipments_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Outdoor Equipments";
        Response.Redirect("~/Description.aspx");
    }
    protected void Sporting_Equipments_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Sporting Equipments";
        Response.Redirect("~/Description.aspx");
    }
    protected void Antiques_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Antiques";
        Response.Redirect("~/Description.aspx");
    }
    protected void Art_Antiques_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Art & Antiques";
        Response.Redirect("~/Description.aspx");
    }
    protected void Pianos_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Pianos";
        Response.Redirect("~/Description.aspx");
    }
    protected void Pooltable_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["house"].Value = "Pool Table";
        Response.Redirect("~/Description.aspx");
    }
}