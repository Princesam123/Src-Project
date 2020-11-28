<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Testing.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Account</h1>

        <section>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image_preview.gif" /><br />
        </section>
        
        <div>
            <asp:Label ID="lblMemberType" runat="server" Text="Member Type:"></asp:Label><br />
            <asp:Label ID="lblUserDetails" runat="server" Text="Member Name: "></asp:Label><br />
            <asp:Label ID="lblMembership" runat="server" Text="Membership Status:"></asp:Label><br />
            <asp:Label ID="lblLockerExpired" runat="server" Text="Locker Expires:"></asp:Label><br />
            
        </div>
        <section>
            <asp:Button ID="btnRenew" runat="server" Text="Renew" />
        </section>
        <section>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /><br />
        </section>

            <asp:Label ID="lblLockerBook" runat="server" Text="BOOK NOW!"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Book Now</asp:LinkButton>
            <section />
        </div>
    </form>
</body>
</html>
