using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class Customer_home : System.Web.UI.Page
{
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
    
    protected void txt_upload_Click(object sender, EventArgs e)
    {
        Response.Redirect("Category.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = "<b><font color=Brown>" + "WELLCOME  " + "</font>" + "<b><font color=blue>" + Session["username"] + "</font>";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        txt_ss.Text = gr.Cells[1].Text;
        txt_tcn.Text = gr.Cells[16].Text;
    }
   

    protected void btn_del_Click(object sender, EventArgs e)
    {
        string destinationaddr = "91" + txt_tcn.Text;
        string message = " Your  consignment " + txt_ss.Text + " had been deleted by customer.Hope for the best. Thank You";

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

        }



        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from Description where Desc_ID = '" + txt_ss.Text.ToString() +"'", con);

        cmd.ExecuteNonQuery();
        
        con.Close();
        Response.Redirect("~/Customer_home.aspx");
        
        
    }
    public void abc(object sender, EventArgs e)
    {
        try
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
        catch(Exception){

        }
    }
}