using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

public partial class Admin_MsgT2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView2.SelectedRow;
        txt_Coname.Text = gr.Cells[2].Text;
        txt_Cno.Text = gr.Cells[3].Text;


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
     
        txt_Scat.Text = gr.Cells[2].Text;
    
        Txt_Bid.Text = gr.Cells[3].Text;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string destinationaddr = "91" + txt_Cno.Text;
        string message = "Hi " + txt_Coname.Text + " , You have win the auction of  " + txt_Scat.Text + " with bid of " + Txt_Bid.Text+  " Thank You";

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
            Response.Redirect("~/Admin_MsgT2.aspx");
        }
    }
}