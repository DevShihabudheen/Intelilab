using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shihab_project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            var username = txt_usrname.Text;
            var password = txt_password.Text;
            string con = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_LoginCred",connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string userType= reader.GetString(0);
            if(userType != "0")
            {
                Response.Redirect("~/adminHome.aspx");
            }
            else{
                Session["username"] = username;
                Response.Redirect("~/userHome.aspx");
                 
            }

            
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signUp.aspx");
        }
    }
}