<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Testing.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <h1>Reset Password</h1>

            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

            <br />
        <div>
            <asp:Label ID="lblEmailPasswordReset" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="txtEmailPasswordReset" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblSecurityQuestion" runat="server" Text="Security Question:"></asp:Label><br />
            <asp:TextBox ID="txtSQAnswer" placeholder="Answer" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblNewPassword" runat="server" Text="New Password"></asp:Label><br />
            <asp:TextBox ID="txtResetPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnPasswordReset" runat="server" Text="Reset Password" OnClick="btnPasswordReset_Click" /><br />
        </div>
    </form>
</body>
</html>
