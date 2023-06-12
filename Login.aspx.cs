using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
public partial class Login : System.Web.UI.Page
{
   
    //string Username, Password;
    //SqlDataAdapter sda;
    //DataTable dt;
   
    protected void btn_login_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ToString());
        con.Open();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("SELECT username, password from Login where username= '" + txt_user.Text + "' and password='" +txt_passw.Text+ "' and usertype=1 or usertype=2 or usertype=3", con);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);
        int role = 0;
       
        SqlCommand command = new SqlCommand("select usertype from Login where username ='" + txt_user.Text + "' and password = '" + txt_passw.Text + "'", con);
        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            role = Convert.ToInt32(reader["usertype"]); 
        }
        if (DT.Rows.Count > 0)
        {
            if (role == 1)
            {
                Session["username"]=txt_user.Text;
                Response.Redirect("Admin_home.aspx");
            }
            else if (role == 2)
            {
                Session["username"] = txt_user.Text;
                Response.Redirect("Customer_home.aspx");
            }
            else if (role == 3)
            {
                Session["username"] = txt_user.Text;
                Response.Redirect("Transporter_home.aspx");
            }
            else
            {

                Label3.Text = "Invalid username or password";
      
            }
        }

        con.Close();
    }
    protected void btn_cncel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
