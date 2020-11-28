<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Testing.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <br />
            <h1>Sign In</h1>
            
            <asp:TextBox ID="txtUsername" type="text" placeholder="Enter Username" runat="server"></asp:TextBox>
        
        <p>
            <asp:TextBox ID="txtPassword" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnLogin" type="submit" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <asp:HyperLink ID="linkForgot" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
            <br />
            <br />
        <asp:HyperLink ID="linkSignup" runat="server" NavigateUrl="~/SignUp.aspx">Don&#39;t have a account? Sign Up</asp:HyperLink>
            <br />
         <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrent Username or Password. Please Try again!" ForeColor="Red"></asp:Label>
            </div>
    </form>
</body>
</html>
