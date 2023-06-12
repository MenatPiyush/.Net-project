using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Transporter_home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label6.Text = "<b><font color=Brown>" + "WELLCOME  " + "</font>" + "<b><font color=red>" + Session["username"] + "</font>";
        }

    }

    public void abc(object sender, EventArgs e)
    {
        try
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
        catch (Exception)
        {

        }
    }

    
}