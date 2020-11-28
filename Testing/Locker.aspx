<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Locker.aspx.cs" Inherits="Testing.Locker" %>

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
        <div class="text-center">
            <h1>Lockers<br />
            </h1>
        </div>
          <asp:GridView ID="gvLocker_Table" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="White" ShowHeaderWhenEmpty="true"
              BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="LockerID"
              OnRowCommand="gvLocker_Table_RowCommand" OnRowEditing="gvLocker_Table_RowEditing" 
              OnRowCancelingEdit="gvLocker_Table_RowCancelingEdit" OnRowUpdating="gvLocker_Table_RowUpdating"
              OnRowDeleting="gvLocker_Table_RowDeleting" OnSelectedIndexChanged="gvLocker_Table_SelectedIndexChanged">

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
                 



                  <asp:TemplateField HeaderText="LockerID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("LockerID") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtLockerID" Text='<%# Eval("LockerID") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtLockerIDFooter" Text='<%# Eval("LockerID") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="LockerSize">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Locker_Size") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtLockerSize" Text='<%# Eval("Locker_Size") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtLockerSizeFooter" Text='<%# Eval("Locker_Size") %>' runat="server" />
                          </FooterTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="LockerRoom">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Locker_Room") %>' runat="server" />
                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtLockerRoom" Text='<%# Eval("Locker_Room") %>' runat="server" /> 
                      </EditItemTemplate>
                         <FooterTemplate>
                              <asp:TextBox ID="txtLockerRoomFooter" Text='<%# Eval("Locker_Room") %>' runat="server" />
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
    </form>
</body>
</html>
