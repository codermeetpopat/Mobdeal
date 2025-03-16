using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;



public partial class Login_Registation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random ra = new Random();
        int noc = ra.Next(6, 10);
        string cap = "";
        int tot = 0;
        do
        {
            int ch = ra.Next(48, 123);
            if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
            {
                cap = cap + (char)ch;
                tot++;
                if (tot == noc)
                    break;
            }
        }
        while (true);
        Label1.Text = cap;


    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
        con.Open();

        string ssql = "SELECT * FROM user_Data WHERE user_email='" + usernm.Text + "' and user_password='" + password.Text + "' ";
        SqlCommand cmd = new SqlCommand(ssql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if(dt.Rows.Count != 0)
        {
            Session["usernm"] = usernm.Text;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Login_Registation.aspx");
        }
    }
    protected void btn_registation_Click(object sender, EventArgs e)
    {
        Response.Write("hello");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
        con.Open();

        String sqlinsert = "insert into user_Data(user_name,user_mobile,user_email,user_password) values(@user_name,@user_mobile,@user_email,@user_password)";
        SqlCommand cmd = new SqlCommand(sqlinsert, con);
        cmd.Parameters.AddWithValue("@user_name", username.Text);
        Session["usernm"] = username.Text;
        //Session["username"] = username.Text;
        cmd.Parameters.AddWithValue("@user_mobile", usermobile.Text);
        cmd.Parameters.AddWithValue("@user_email", useremail.Text);
        cmd.Parameters.AddWithValue("@user_password", userpass.Text);

        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Redirect(Request.Url.ToString(), false);
        }
    }
}