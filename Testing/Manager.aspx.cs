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
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulatedGridView();
            }
        }

        void PopulatedGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Member", sqlCon);
                sqlDa.Fill(dtbl);
            }

            if (dtbl.Rows.Count > 0)
            {
                gvMember_Table.DataSource = dtbl;
                gvMember_Table.DataBind();

            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvMember_Table.DataSource = dtbl;
                gvMember_Table.DataBind();
                gvMember_Table.Rows[0].Cells.Clear();
                gvMember_Table.Rows[0].Cells.Add(new TableCell());
                gvMember_Table.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvMember_Table.Rows[0].Cells[0].Text = "No Data Found..";
                gvMember_Table.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }


        }

        protected void gvMember_Table_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {


                if (e.CommandName.Equals("Insert"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Member (FirstName, LastName, PhoneNumber, Email, UserName, Password) VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @UserName, @Password)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@FirstName", (gvMember_Table.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@LastName", (gvMember_Table.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@PhoneNumber", (gvMember_Table.FooterRow.FindControl("txtPhoneNumberFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Email", (gvMember_Table.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@UserName", (gvMember_Table.FooterRow.FindControl("txtUserNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", (gvMember_Table.FooterRow.FindControl("txtPasswordFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulatedGridView();
                        lblSuccessMessage.Text = "New Member Added";
                        lblErrorMessage.Text = "";


                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvMember_Table_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMember_Table.EditIndex = e.NewEditIndex;
            PopulatedGridView();
        }

        protected void gvMember_Table_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMember_Table.EditIndex = -1;
            PopulatedGridView();
        }

        protected void gvMember_Table_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                {
                    sqlCon.Open();
                    string query = "UPDATE Member SET FirstName=@FirstName, LastName=@LastName, PhoneNumber=@PhoneNumber, Email=@Email, UserName=@UserName, Password=@Password WHERE MemberID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                    sqlCmd.Parameters.AddWithValue("@FirstName", (gvMember_Table.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@LastName", (gvMember_Table.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@PhoneNumber", (gvMember_Table.Rows[e.RowIndex].FindControl("txtPhoneNumber") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", (gvMember_Table.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@UserName", (gvMember_Table.Rows[e.RowIndex].FindControl("txtUserName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", (gvMember_Table.Rows[e.RowIndex].FindControl("txtPassword") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvMember_Table.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvMember_Table.EditIndex = -1;
                    PopulatedGridView();

                    lblSuccessMessage.Text = "Member Updated";
                    lblErrorMessage.Text = "";



                }

            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvMember_Table_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Member WHERE MemberID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);


                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvMember_Table.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulatedGridView();
                    lblSuccessMessage.Text = "Member Deleted";
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
