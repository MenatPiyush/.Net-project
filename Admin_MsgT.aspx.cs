using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

public partial class Admin_Message : System.Web.UI.Page
{



    
    protected void Button4_Click(object sender, EventArgs e)
    {
        string destinationaddr = "91" + txt_tcno.Text;
        string message = "Hi " + txt_tname.Text+ " , There are consignment for you and category is "+txt_Cat.Text+ " having Sub-Category a "+txt_Scat.Text+" Thank You";

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

            Response.Redirect("~/Admin_MsgT.aspx");
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView2.SelectedRow;
        txt_tname.Text = gr.Cells[1].Text;
        txt_tcno.Text = gr.Cells[2].Text;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        txt_Cat.Text = gr.Cells[1].Text;
        txt_Scat.Text=gr.Cells[2].Text;
    }
}
