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
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            string fullName = txt_fullName.Text;
            string Dob = txt_Dob.Text;
            DateTime date = DateTime.Parse(Dob);
            int age = CalculateAge(date);
            string userName = txt_Username.Text;
            string password = txt_password.Text;
            string repassword = txt_confirmPass.Text;
            string phone = txt_phone.Text;
            string mail = txt_mail.Text;
            //sql
            string con = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("sp_insertRegistration", connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fullName", fullName);
            cmd.Parameters.AddWithValue("@Dob", Dob);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@mail", mail);
            cmd.ExecuteNonQuery();

        }

        protected void txt_Dob_TextChanged(object sender, EventArgs e)
        {

        }

        static int CalculateAge(DateTime birthdate)
        {
            DateTime currentDate = DateTime.Now;
            int age = currentDate.Year - birthdate.Year;

            // Adjust age if the birthday hasn't occurred yet this year
            if (birthdate > currentDate.AddYears(-age))
            {
                age--;
            }

            return age;
        }
        protected void select(object sender, EventArgs e)
        {

        }
        protected void txt_Dob_SelectionChanged(object sender, EventArgs e)
        {
            //// Get the selected date from the calendar control
            //DateTime selectedDate = calendarDate.SelectedDate;

            //// Update the textbox with the selected date
            //txtSelectedDate.Text = selectedDate.ToString("yyyy-MM-dd");



        }
    }
}