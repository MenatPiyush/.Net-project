using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Transporter_auction : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {



        txt_tname.Text = Session["username"].ToString();
       
        
        if (!IsPostBack)
        {
            Session["Timer"] = DateTime.Now.AddMinutes(30).ToString();
        }
    }

    protected void timer1_tick(object sender, EventArgs e)
    {
        if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
        {
            litmsg.Text = "Time left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes)
                .ToString() + "Minute" + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60)
                .ToString() + "Seconds";
        }
        else
        {
            litmsg.Text = "Time Expire...";
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        con.Open();


        string sql = "UPDATE Description SET Bid ='" + txt_bid.Text + "', transportername='" + txt_tname.Text + "',trancno='" + txt_tcn.Text + "' WHERE Desc_ID = " + txt_Desc.Text + "";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();




        con.Close();

        Response.Redirect("~/Transporter_home.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        txt_Desc.Text = gr.Cells[1].Text;
    }
}
   







