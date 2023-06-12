using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ToString());

        SqlCommand cmd = new SqlCommand("forgot_pass",con );

        con.Open();

        cmd.Parameters.AddWithValue("@emailid",txt_email.Text);
        cmd.Parameters.AddWithValue("@question",dd_question.SelectedValue);
        cmd.Parameters.AddWithValue("@answer",txt_answer.Text);
        cmd.Parameters.AddWithValue("@newpassword",txt_password.Text);
       
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Updated Successfully');</script>");
        
        con.Close();

        Response.Redirect("Login.aspx");
        
    }
    protected void btn_cncel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}