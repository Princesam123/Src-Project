<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="Testing.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center;"">Members</h1>
        <br />
        <div class="gridView">
          <asp:GridView ID="gvMember_Table" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="White" ShowHeaderWhenEmpty="true"
              BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MemberID"
              OnRowCommand="gvMember_Table_RowCommand" OnRowEditing="gvMember_Table_RowEditing" 
              OnRowCancelingEdit="gvMember_Table_RowCancelingEdit" OnRowUpdating="gvMember_Table_RowUpdating"
              OnRowDeleting="gvMember_Table_RowDeleting">

              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />

               <Columns>
                 



                  <asp:TemplateField HeaderText="FirstName">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtFirstNameFooter" Text='<%# Eval("FirstName") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="LastName">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtLastName" Text='<%# Eval("LastName") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtLastNameFooter" Text='<%# Eval("LastName") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="PhoneNumber">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("PhoneNumber") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtPhoneNumber" Text='<%# Eval("PhoneNumber") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtPhoneNumberFooter" Text='<%# Eval("PhoneNumber") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="Email">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtEmailFooter" Text='<%# Eval("Email") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="UserName">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("UserName") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtUserName" Text='<%# Eval("UserName") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtUserNameFooter" Text='<%# Eval("UserName") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="Password">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Password") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtPassword" Text='<%# Eval("Password") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtPasswordFooter" Text='<%# Eval("Password") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField>
                      <ItemTemplate>
                          <asp:ImageButton ImageUrl="~/Images/pencilIcon.png" runat="server" CommandName="Edit" 
                              ToolTip="Edit" Width="20px" Height="20px" />

                          <asp:ImageButton ImageUrl="~/Images/deleteIcon.png" runat="server" CommandName="Delete" 
                              ToolTip="Delete" Width="20px" Height="20px" />
                      </ItemTemplate>

                      <EditItemTemplate>
                          <asp:ImageButton ImageUrl="~/Images/saveIcon.png" runat="server" CommandName="Save" 
                              ToolTip="Save" Width="20px" Height="20px" />

                          <asp:ImageButton ImageUrl="~/Images/cancelIcon.png" runat="server" CommandName="Cancel" 
                              ToolTip="Cancel" Width="20px" Height="20px" />
                      </EditItemTemplate>

                      <FooterTemplate>
                          <asp:ImageButton ImageUrl="~/Images/insertIcon.png" runat="server" CommandName="Insert" 
                              ToolTip="Insert" Width="20px" Height="20px" />
                      </FooterTemplate>
                  </asp:TemplateField>

              </Columns>

          </asp:GridView>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

            <br />

        </div>
    </form>
</body>
</html>
