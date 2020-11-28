using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Testing
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                {
                    sqlCon.Open();
                    string query = "INSERT INTO Member (FirstName, LastName, PhoneNumber, Email, UserName, Password) VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @UserName, @Password)"; ;
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@FirstName", (FindControl("txtFirstname") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@LastName", (FindControl("txtLastname") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@PhoneNumber", (FindControl("txtPhone") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", (FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@UserName", (FindControl("txtUsername") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", (FindControl("txtPassword") as TextBox).Text.Trim());
                    sqlCmd.ExecuteNonQuery();

                    lblSuccessMessage.Text = "Account Created ";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}