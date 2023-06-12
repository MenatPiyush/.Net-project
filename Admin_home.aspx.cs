using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Collections.Specialized;
public partial class Admin_home : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label2.Text = "<b><font color=Brown>" + "WELLCOME  " + "</font>" + "<b><font color=red>" + Session["username"] + "</font>";
        }  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
        //GridViewRow g1 = GridView1.SelectedRow;

        //    //DateTime data1 = Convert.ToDateTime(g1.Cells[12].Text);
        //    //DateTime date2 = Convert.ToDateTime(g1.Cells[13].Text);
            
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        //    con.Open();
        
        //    SqlCommand cmd = new SqlCommand("Sch1", con);

        //    string i = Convert.ToInt32(g1.Cells[1]);
   
        //  cmd.Parameters.AddWithValue("@Descid",g1.Cells[1].Text);
        //    cmd.Parameters.AddWithValue("@Cat", g1.Cells[2].Text);
        //    cmd.Parameters.AddWithValue("@Scat", g1.Cells[3].Text);
        //    cmd.Parameters.AddWithValue("@Img", g1.Cells[4].Text);
        //    cmd.Parameters.AddWithValue("@Qty", g1.Cells[5].Text);
        //    cmd.Parameters.AddWithValue("@Ht", g1.Cells[6].Text);
        //    cmd.Parameters.AddWithValue("@Wi", g1.Cells[7].Text);
        //    cmd.Parameters.AddWithValue("@Wt", g1.Cells[8].Text);
        //    cmd.Parameters.AddWithValue("@Desc", g1.Cells[9].Text);
        //    cmd.Parameters.AddWithValue("@Sa", g1.Cells[10].Text);
        //    cmd.Parameters.AddWithValue("@Da", g1.Cells[11].Text);
        //    //cmd.Parameters.AddWithValue("@Dt", g1.Cells[12].Text);
        //    //cmd.Parameters.AddWithValue("@Ti", g1.Cells[13].Text);
        //    cmd.Parameters.AddWithValue("@Uname", g1.Cells[14].Text);
            
        //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //    cmd.ExecuteNonQuery();

        //    con.Close();


        
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
    
