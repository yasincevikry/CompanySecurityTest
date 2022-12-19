using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompanySecurityTest
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["part"] == null)
                {
                    btnLogin.Visible = true;
                    btnSignup.Visible = true; 

                    btnLogout.Visible = false;
                    btnCompanyProfile.Visible = false; 
                    btnMitreAttackTest.Visible = false;
                    btnWelcome.Visible = false;

                }
                else if (Session["part"].Equals("company"))
                {
                    btnLogin.Visible = false;
                    btnSignup.Visible = false;

                    btnLogout.Visible = true; 
                    btnCompanyProfile.Visible = true; 
                    btnMitreAttackTest.Visible = true;
                    btnWelcome.Visible = true;
                    btnWelcome.Text = "Welcome " + Session["companyname"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnMitreAttackTest_Click(object sender, EventArgs e)
        {
            Response.Redirect("MitreAttack.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyLogin.aspx");
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanySignup.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["companyname"] = "";
            Session["part"] = "";

            btnLogin.Visible = true; 
            btnSignup.Visible = true; 

            btnLogout.Visible = false; 
            btnCompanyProfile.Visible = false; 
            btnMitreAttackTest.Visible = false;

            Response.Redirect("Home.aspx");
        }

        protected void btnWelcome_Click(object sender, EventArgs e)
        {

        }

        protected void btnCompanyProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyProfile.aspx");
        }
    }
}