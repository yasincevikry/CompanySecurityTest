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
    public partial class CompanyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["part"] == null)
            {
                Response.Redirect("Home.aspx");
            }

            //getCompanyInformations();
        }

        private void getCompanyInformations()
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("SELECT * from Informations WHERE Informations.Email='" + Session["email"].ToString().Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtCompanyName.Text = dt.Rows[0]["CompanyName"].ToString();
            txtCompanyArea.Text = dt.Rows[0]["CompanyArea"].ToString();
            txtCompanyCity.Text = dt.Rows[0]["CompanyCity"].ToString();
            txtCompanyDistrict.Text = dt.Rows[0]["CompanyDistrict"].ToString();
            ddlCountry.Text = dt.Rows[0]["CompanyCountry"].ToString();
            txtContact.Text = dt.Rows[0]["Contact"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtPassword.Text = dt.Rows[0]["Password"].ToString().Trim();
            txtDescription.Text = dt.Rows[0]["Description"].ToString().Trim();
            con.Close();

        }

        private void UpdateInformations()
        {
            try
            {
                SqlConnection con = new SqlConnection("Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE Informations SET CompanyName=@CompanyName, CompanyArea=@CompanyArea, CompanyCity=@CompanyCity, CompanyDistrict=@CompanyDistrict, CompanyCountry=@CompanyCountry, Contact=@Contact, Email=@Email, Password=@Password, Description=@Description WHERE Email='" + Session["email"].ToString().Trim() + "'", con);


                cmd.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                cmd.Parameters.AddWithValue("@CompanyArea", txtCompanyArea.Text.Trim());
                cmd.Parameters.AddWithValue("@CompanyCity", txtCompanyCity.Text.Trim());
                cmd.Parameters.AddWithValue("@CompanyDistrict", txtCompanyDistrict.Text.Trim());
                cmd.Parameters.AddWithValue("@CompanyCountry", ddlCountry.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtNewPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());

                int result = cmd.ExecuteNonQuery();
                con.Close();

                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    //GetUserPersonalDetails();
                }
                else
                {
                    Response.Write("<script>alert('Invalid entry');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            UpdateInformations();
        }

        protected void btnVisualizeOldInformation_Click(object sender, EventArgs e)
        {
            BringOldInformation();
        }

        private void BringOldInformation()
        {
            try
            {
                SqlConnection con = new SqlConnection("Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Informations WHERE Email='" + Session["email"].ToString().Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //gvMitreAttacks.DataSource = dt;
                //gvMitreAttacks.DataBind();

                txtCompanyName.Text = dt.Rows[0]["CompanyName"].ToString();
                txtCompanyArea.Text = dt.Rows[0]["CompanyArea"].ToString();
                txtCompanyCity.Text = dt.Rows[0]["CompanyCity"].ToString();
                txtCompanyDistrict.Text = dt.Rows[0]["CompanyDistrict"].ToString();
                ddlCountry.SelectedValue = dt.Rows[0]["CompanyCountry"].ToString().Trim();
                txtContact.Text = dt.Rows[0]["Contact"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                txtPassword.Text = dt.Rows[0]["Password"].ToString();
                txtDescription.Text = dt.Rows[0]["Description"].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}