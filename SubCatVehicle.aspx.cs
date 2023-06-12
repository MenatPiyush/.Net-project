using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubCatVehicle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
         
    
    }
   
    protected void Cars_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Cars";
        Response.Redirect("~/Description.aspx");
    }
    protected void Motorcycles_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Motorcycles";
        Response.Redirect("~/Description.aspx");
    }
    protected void Power_Boats_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Power Boats";
        Response.Redirect("~/Description.aspx");
    }
    
    protected void Rescreational_Vehicles_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Rescreational Vehicles";
        Response.Redirect("~/Description.aspx");
    }
    protected void ATV_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "ATV";
        Response.Redirect("~/Description.aspx");
    }
    protected void Farm_Equipments_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Farm Equipments";
        Response.Redirect("~/Description.aspx");
    }
    protected void Construction_Equipments_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Construction Equipments";
        Response.Redirect("~/Description.aspx");
    }
    protected void Parts_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Parts";
        Response.Redirect("~/Description.aspx");
    }
    protected void Cycle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Cycle";
        Response.Redirect("~/Description.aspx");
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies["veh"].Value = "Trailer";
        Response.Redirect("~/Description.aspx");
    }
}