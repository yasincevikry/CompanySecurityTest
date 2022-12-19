using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompanySecurityTest
{
    public partial class MitreAttack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["part"] == null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            int result = 0;
            if (ddlMitreAttack.SelectedIndex == 1)
            {
                SqlConnection connection = new SqlConnection("Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True");
                connection.Open();

                var proc1 = new ProcessStartInfo();
                string anyCommand = "nmap -Pn -A -T5 --open -oN nmap_test_result.txt 127.0.0.1";
                proc1.UseShellExecute = true;
                proc1.WorkingDirectory = @"C:\Windows\SysWOW64";
                proc1.FileName = @"C:\Windows\System32\cmd.exe";
                proc1.Verb = "runas";
                proc1.Arguments = "/c " + anyCommand;
                proc1.WindowStyle = ProcessWindowStyle.Normal;
                Process.Start(proc1);

                string testResult1 = File.ReadAllText(@"C:\Windows\SysWOW64\nmap_test_result.txt");
                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO AttackOutcomes (AttackResult, AttackType, CompanyID) " +
                          "VALUES('" + testResult1 + "','" + 1 + "','" + Session["companyID"].ToString().Trim() + "')", connection);
                    result = command.ExecuteNonQuery();
                }
            }

            if (ddlMitreAttack.SelectedIndex == 2)
            {
                SqlConnection connection = new SqlConnection("Server=DESKTOP-DL108EG\\SQLEXPRESS;Database=CompanySecurityTest;Trusted_Connection=True");
                connection.Open();

                var proc2 = new ProcessStartInfo();
                string anyCommand = "net user /add #{yenihesap} #{şifre}";
                proc2.UseShellExecute = true;
                proc2.WorkingDirectory = @"C:\Users\tyfny";
                proc2.FileName = @"C:\Windows\System32\cmd.exe";
                proc2.Verb = "runas";
                proc2.Arguments = "/c " + anyCommand;
                proc2.WindowStyle = ProcessWindowStyle.Normal;
                Process.Start(proc2);

                var proc3 = new ProcessStartInfo();
                string anyCommand3 = "net user > net_user_test.txt";
                proc3.UseShellExecute = true;
                proc3.WorkingDirectory = @"C:\Users\tyfny";
                proc3.FileName = @"C:\Windows\System32\cmd.exe";
                proc3.Verb = "runas";
                proc3.Arguments = "/c " + anyCommand3;
                proc3.WindowStyle = ProcessWindowStyle.Normal;
                Process.Start(proc3);

                string testResult2 = File.ReadAllText(@"C:\Windows\SysWOW64\net_user_test.txt");
                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO AttackOutcomes (AttackResult, AttackType, CompanyID) " +
                          "VALUES('" + testResult2 + "','" + 2 + "','" + Session["companyID"].ToString().Trim() + "')", connection);
                    result = command.ExecuteNonQuery();
                }
            }
        }
    }
}
