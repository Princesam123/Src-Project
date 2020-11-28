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
    public partial class Locker : System.Web.UI.Page
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
            DataTable dtblL = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Locker", sqlCon);
                sqlDa.Fill(dtblL);
            }

            if (dtblL.Rows.Count > 0)
            {
                gvLocker_Table.DataSource = dtblL;
                gvLocker_Table.DataBind();

            }
            else
            {
                dtblL.Rows.Add(dtblL.NewRow());
                gvLocker_Table.DataSource = dtblL;
                gvLocker_Table.DataBind();
                gvLocker_Table.Rows[0].Cells.Clear();
                gvLocker_Table.Rows[0].Cells.Add(new TableCell());
                gvLocker_Table.Rows[0].Cells[0].ColumnSpan = dtblL.Columns.Count;
                gvLocker_Table.Rows[0].Cells[0].Text = "No Data Found..";
                gvLocker_Table.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }


        protected void gvLocker_Table_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {


                if (e.CommandName.Equals("Insert"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Locker (LockerID, Locker_Size, Locker_Room, First Name, Last Name, Email, Gender) VALUES (@LockerID, @Locker_Size, @Locker_Room, @FirstName, @LastName, @Email, @Gender)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@LockerID", (gvLocker_Table.FooterRow.FindControl("txtLockerIDFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Locker_Size", (gvLocker_Table.FooterRow.FindControl("txtLockerSizeFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Locker_Room", (gvLocker_Table.FooterRow.FindControl("txtLockerRoomFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@FirstName", (gvLocker_Table.FooterRow.FindControl("txtLockerFirstFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@LastName", (gvLocker_Table.FooterRow.FindControl("txtLockerLastFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Email", (gvLocker_Table.FooterRow.FindControl("txtLockerEmailFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Gender", (gvLocker_Table.FooterRow.FindControl("txtLockerGenderFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulatedGridView();
                        lblSuccessMessage.Text = "New Locker Added";
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

        protected void gvLocker_Table_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvLocker_Table.EditIndex = e.NewEditIndex;
            PopulatedGridView();
        }

        protected void gvLocker_Table_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvLocker_Table.EditIndex = -1;
            PopulatedGridView();
        }

        protected void gvLocker_Table_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                {
                    sqlCon.Open();
                    string query = "UPDATE Locker SET LockerID=@LockerID, Locker_Size=@Locker_Size, Locker_Room=@Locker_Room, First Name=@FirstName, Last Name=@LastName, Email=@Email, Gender=@Gender  WHERE LockerID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                    sqlCmd.Parameters.AddWithValue("@LockerID", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerID") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Locker_Size", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerSize") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Locker_Room", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerRoom") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvLocker_Table.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvLocker_Table.EditIndex = -1;
                    PopulatedGridView();

                    lblSuccessMessage.Text = "Locker Updated";
                    lblErrorMessage.Text = "";
                }

            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvLocker_Table_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Locker WHERE LockerID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvLocker_Table.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulatedGridView();
                    lblSuccessMessage.Text = "Locker Deleted";
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