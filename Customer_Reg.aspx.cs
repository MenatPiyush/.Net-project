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
using System.Net.Mail;

public partial class Customer_Reg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();
        SqlDataReader reader;
        SqlCommand com = new SqlCommand("Select RoleID from  Role where RoleID= 2", con);
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            txt_Role_ID.Text = (reader["RoleID"].ToString());
        }
        reader.Close();
        con.Close();
    }




    protected void btn_submit_Click(object sender, EventArgs e)
    {


        string destinationaddr = "91" + txt_contactno.Text;
        string message = "Hi " + txt_custname.Text + " , You Have Been Registered to Shipping Tech. Thanks!!";

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
               {"apikey" , "EkOyCjONgE4-I1orJf8uKwaUW0OHKdZ4Oi7mheEOes"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
        
        
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("customer_registration", con);
        cmd.Parameters.AddWithValue("@custname", txt_custname.Text);
        cmd.Parameters.AddWithValue("@contactno", txt_contactno.Text);
        cmd.Parameters.AddWithValue("@emailid", txt_emailid.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);
        cmd.Parameters.AddWithValue("@question", dd_question.SelectedValue);
        cmd.Parameters.AddWithValue("@answer", txt_answer.Text);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

        con.Close();

        con.Open();

        SqlCommand map = new SqlCommand("Master_Login", con);
        map.Parameters.AddWithValue("@usertype", txt_Role_ID.Text);
        map.Parameters.AddWithValue("@username", txt_emailid.Text);
        map.Parameters.AddWithValue("@password", txt_password.Text);
        map.CommandType = System.Data.CommandType.StoredProcedure;
        map.ExecuteNonQuery();

        con.Close();

        con.Open();

        SqlCommand map1 = new SqlCommand("forgot_pass2", con);
        map1.Parameters.AddWithValue("@Emailid", txt_emailid.Text);
        map1.Parameters.AddWithValue("@Quest", dd_question.SelectedValue);
        map1.Parameters.AddWithValue("@Ans", txt_answer.Text);
        map1.Parameters.AddWithValue("@Pass", txt_password.Text);
        map1.CommandType = System.Data.CommandType.StoredProcedure;
        map1.ExecuteNonQuery();

        con.Close();

        //con.Open();
        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;
        //smtp.Credentials = new System.Net.NetworkCredential("shippingtech2015@gmail.com", "Shippingtech@2015");
        //smtp.EnableSsl = true;
        //MailMessage msg = new MailMessage();
        //msg.Subject = "Hello " + txt_custname.Text + "You had succesfuly registered..";
        //msg.Body = "Hii..  " + txt_custname.Text + "You have been successuly Registered to Shipping Tech. Enjoy our services.. Thank You";
        //string toaddress = txt_emailid.Text;
        //msg.To.Add(toaddress);
        //string fromaddress = "Shipping Tech <shippingtech2015@gmail.com>";

        //msg.From = new MailAddress(fromaddress);

        //try
        //{
        //    smtp.Send(msg);
        //    txt_custname.Text = "";
        //    txt_emailid.Text = "";

        //}
        //catch
        //{

        //    throw;
        //}
        //con.Close();

        

         

        }
        Response.Write("<script>alert('Registered Successfully');</script>");

        txt_custname.Text = "";
        txt_contactno.Text = "";
        txt_emailid.Text = "";
        txt_password.Text = "";
        txt_confirmpassword.Text = "";
        dd_question.SelectedIndex = 0;
        txt_answer.Text = "";

        


    }



    protected void btn_reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customer_Reg.aspx");
    }


}   