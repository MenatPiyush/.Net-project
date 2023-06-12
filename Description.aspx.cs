using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Description : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        

        txt_catname.Text = Request.Cookies["desc"].Value.ToString();
        
        if(Request.Cookies["desc"].Value=="Vehicle")
        {
                txt_subcatname.Text = Request.Cookies["veh"].Value;
        }
        else if(Request.Cookies["desc"].Value == "Household")
        {
            txt_subcatname.Text = Request.Cookies["house"].Value;
        }
        else if (Request.Cookies["desc"].Value == "Animals")
        {
            txt_subcatname.Text = Request.Cookies["animal"].Value;
        }

      Label3.Text = Convert.ToString(Session["username"] );
        
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("Descrip", con);
       
        cmd.Parameters.AddWithValue("@Cat", txt_catname.Text);
        cmd.Parameters.AddWithValue("@Subcat", txt_subcatname.Text);
        cmd.Parameters.AddWithValue("@Qty", txt_Quantity.Text);
        cmd.Parameters.AddWithValue("@Ht", txt_height.Text);
        cmd.Parameters.AddWithValue("@Wi", txt_width.Text);
        cmd.Parameters.AddWithValue("@Weg", txt_weight.Text);
        cmd.Parameters.AddWithValue("@Desc", txt_desc.Text);
        cmd.Parameters.AddWithValue("@SoAdd", txt_srcadd.Text);
        cmd.Parameters.AddWithValue("@DeAdd", txt_destadd.Text);
        cmd.Parameters.AddWithValue("@Dt",txt_date.Text);
        cmd.Parameters.AddWithValue("@Ti",txt_time.Text);
        cmd.Parameters.AddWithValue("@uname",Label3.Text);

        if (fu_image.HasFile)
        {
            fu_image.SaveAs(Server.MapPath("~/Uploads/Desc/") + fu_image.FileName);
        }


        cmd.Parameters.AddWithValue("@Img", ("~/Uploads/Desc/") + fu_image.FileName);

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
       
        Response.Write("<script>alert('Stored Successfully');</script>");

        txt_catname.Text = "";
        txt_subcatname.Text = "";
        txt_Quantity.Text = "";
        txt_height.Text = "";
        txt_width.Text = "";
        txt_weight.Text = "";
        txt_desc.Text = "";
        txt_srcadd.Text = "";
        txt_destadd.Text = "";
        txt_date.Text = "";
        txt_time.Text = "";

        Response.Redirect("Customer_home.aspx");


        con.Close();


    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer_home.aspx");
    }
    
}