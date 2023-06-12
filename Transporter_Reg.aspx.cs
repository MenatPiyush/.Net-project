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
	

public partial class Transporter_Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();
        SqlDataReader reader;
        SqlCommand com = new SqlCommand("Select RoleID from  Role where RoleID= 3", con);
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            txt_RoleID.Text = (reader["RoleID"].ToString());
        }
        reader.Close();
        con.Close();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {


        string destinationaddr = "91" + txt_companycontactno.Text;
        string message = "Hi " + txt_companyname.Text + " ,You have been successfully registered to Shipping Tech. Enjoy our service  Thank You";

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



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ToString());

            SqlCommand cmd = new SqlCommand("Transporter_registration", con);

            con.Open();

            cmd.Parameters.AddWithValue("@companyname", txt_companyname.Text);
            cmd.Parameters.AddWithValue("@state", dd_state.SelectedValue);
            cmd.Parameters.AddWithValue("@city", dd_city.SelectedValue);
            cmd.Parameters.AddWithValue("@companyadd", txt_companyadd.Text);
            cmd.Parameters.AddWithValue("@Pincode", txt_pincode.Text);
            cmd.Parameters.AddWithValue("@companycontact", txt_companycontactno.Text);
            cmd.Parameters.AddWithValue("@managername", txt_managername.Text);
            cmd.Parameters.AddWithValue("@managercontact", txt_managercontactno.Text);
            cmd.Parameters.AddWithValue("@username", txt_email.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@question", dd_question.SelectedValue);
            cmd.Parameters.AddWithValue("@answer", txt_answer.Text);
            if (fu_logo.HasFile)
            {
                fu_logo.SaveAs(Server.MapPath("~/Uploads/Document/") + fu_logo.FileName);
            }

            cmd.Parameters.AddWithValue("@companylogo", fu_logo.FileName);


            if (fu_doc1.HasFile)
            {
                fu_doc1.SaveAs(Server.MapPath("~/Uploads/Document/") + fu_doc1.FileName);
            }
            cmd.Parameters.AddWithValue("@doc1", fu_doc1.FileName);


            if (fu_doc2.HasFile)
            {
                fu_doc2.SaveAs(Server.MapPath("~/Uploads/Document/") + fu_doc2.FileName);
            }
            cmd.Parameters.AddWithValue("@doc2", fu_doc2.FileName);


            if (fu_doc3.HasFile)
            {
                fu_doc3.SaveAs(Server.MapPath("~/Uploads/Document/") + fu_doc3.FileName);
            }


            cmd.Parameters.AddWithValue("@doc3", fu_doc3.FileName);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();


            con.Open();

            SqlCommand map = new SqlCommand("Master_Login", con);
            map.Parameters.AddWithValue("@usertype", txt_RoleID.Text);
            map.Parameters.AddWithValue("@username", txt_email.Text);
            map.Parameters.AddWithValue("@password", txt_password.Text);
            map.CommandType = System.Data.CommandType.StoredProcedure;
            map.ExecuteNonQuery();

            con.Close();

            con.Open();

            SqlCommand map1 = new SqlCommand("forgot_pass2", con);
            map1.Parameters.AddWithValue("@Emailid", txt_email.Text);
            map1.Parameters.AddWithValue("@Quest", dd_question.SelectedValue);
            map1.Parameters.AddWithValue("@Ans", txt_answer.Text);
            map1.Parameters.AddWithValue("@Pass", txt_password.Text);
            map1.CommandType = System.Data.CommandType.StoredProcedure;
            map1.ExecuteNonQuery();


            //con.Open();
            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com";
            //smtp.Port = 587;
            //smtp.Credentials = new System.Net.NetworkCredential("shippingtech2015@gmail.com", "Shippingtech@2015");
            //smtp.EnableSsl = true;
            //MailMessage msg = new MailMessage();
            //msg.Subject = "Hello " + txt_companyname.Text + "You had succesfuly registered..";
            //msg.Body = "Hii..  " + txt_companyname.Text + "You have been successuly Registered to Shipping Tech. Enjoy our services.. Thank You";
            //string toaddress = txt_email.Text;
            //msg.To.Add(toaddress);
            //string fromaddress = "Shipping Tech <shippingtech2015@gmail.com>";

            //msg.From = new MailAddress(fromaddress);

            //try
            //{
            //    smtp.Send(msg);
            //    txt_companyname.Text = "";
            //    txt_email.Text = "";

            //}
            //catch
            //{

            //    throw;
            //}
            //con.Close();


            Response.Write("<script>alert('Registered Successfully');</script>");

            txt_companyname.Text = "";
            dd_state.SelectedIndex = 0;
            dd_city.SelectedIndex = 0;
            txt_companyadd.Text = "";
            txt_pincode.Text = "";
            txt_companycontactno.Text = "";
            txt_managername.Text = "";
            txt_managercontactno.Text = "";
            txt_email.Text = "";
            txt_password.Text = "";
            dd_question.SelectedIndex = 0;
            txt_answer.Text = "";



          

        }
    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {

        
        Response.Redirect("Transporter_Reg.aspx");


        
    }
}