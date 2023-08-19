using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shihab_project
{
    public partial class userHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlInterface1.Visible = false;
                pnlInterface2.Visible = false;
                pnlInterface3.Visible = false;
            }
        }
        protected void btnInterface1_Click(object sender, EventArgs e)
        {
            // Show Interface 1 and hide others
            pnlInterface1.Visible = true;
            pnlInterface2.Visible = false;
            pnlInterface3.Visible = false;
            //sql
            string con = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_showUserdetails", connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            var usr = Session["username"].ToString();
            cmd.Parameters.AddWithValue("@username", usr);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            lbl_Name.Text = reader["name"].ToString();
            lbl_age.Text = reader["age"].ToString();
            lbl_phone.Text = reader["phone"].ToString();
            lbl_userName.Text = reader["username"].ToString();
            lbl_mail.Text = reader["mail"].ToString();

        }

        protected void btnInterface2_Click(object sender, EventArgs e)
        {
            // Show Interface 2 and hide others
            pnlInterface1.Visible = false;
            pnlInterface2.Visible = true;
            pnlInterface3.Visible = false;
            string con = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_showProduct", connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dT = new DataTable();
            ad.Fill(dT);
            DropDownList1.DataSource = dT;
            DropDownList1.DataTextField = "ProductName";
            DropDownList1.DataValueField = "price";
            DropDownList1.DataBind();
            

        }

        protected void btnInterface3_Click(object sender, EventArgs e)
        {
            // Show Interface 3 and hide others
            pnlInterface1.Visible = false;
            pnlInterface2.Visible = false;
            pnlInterface3.Visible = true;
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _product = DropDownList1.SelectedItem.Value;
            float product = float.Parse(_product);
            int qntity = Convert.ToInt32(TextBox1.Text);
            lbl_total.Text = Convert.ToString((product*qntity)*1.05);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_UpdatePassword", connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", Session["username"]);
            cmd.Parameters.AddWithValue("@password", txt_newPassword.Text);
            cmd.ExecuteNonQuery();
        }
    }
}