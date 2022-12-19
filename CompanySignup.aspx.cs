using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompanySecurityTest
{
    public partial class CompanySignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int InsertCompany(string companyName, string companyArea, string companyCity, string companyDistrict, string companyCountry, string contact, string email, string password, string description)
        {
            int result = 0;
            string connectionString = "Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True";

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Informations (CompanyName,CompanyArea,CompanyCity,CompanyDistrict,CompanyCountry,Contact,Email,Password,Description) " +
                      "VALUES('" + companyName + "','" + companyArea + "','" + companyCity + "','" + companyDistrict + "','" + companyCountry + "','" + contact + "','" + email + "','" + password + "','" + description + "')", connection);
                result = command.ExecuteNonQuery();
            }

            return result;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            int result = InsertCompany(txtCompanyName.Text, txtCompanyArea.Text, txtCompanyCity.Text, txtCompanyDistrict.Text, ddlCountry.Text, txtContact.Text, txtEmail.Text, txtPassword.Text, txtDescription.Text);
            if (result > 0)
            {
                lblMessage.Text = "Your company has been added. WELCOME!";
            }
            else
            {
                lblMessage.Text = "Something went wrong :( Try again!";
            }
        }
    }
}