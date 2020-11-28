<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Testing.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SignUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="signup-box">
            <h1>Sign Up</h1>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />
            <asp:TextBox ID="txtFirstname" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtLastname" placeholder="Last Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPhone" placeholder="Phone Number" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtEmail" placeholder="Email address" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPassword" type="password" placeholder="Password" runat="server"></asp:TextBox>
            <asp:DropDownList ID="SQ1List" runat="server">
                <asp:ListItem>What high school did you graduate from?</asp:ListItem>
                <asp:ListItem>What is your favorite team?</asp:ListItem>
                <asp:ListItem>Who is your favorite teacher</asp:ListItem>
                <asp:ListItem></asp:ListItem>
             </asp:DropDownList>
            <asp:TextBox ID="txtSQ1" placeholder="Security Question 1" runat="server"></asp:TextBox>
            <asp:DropDownList ID="SQ2List" runat="server">
                <asp:ListItem>What is your favorite mascot?</asp:ListItem>
                <asp:ListItem>Where did you go for middle school?</asp:ListItem>
                <asp:ListItem>What is your mother&#39;s maiden name?</asp:ListItem>
                <asp:ListItem></asp:ListItem>
             </asp:DropDownList>
            <asp:TextBox ID="txtSQ2" placeholder="Security Question 2" runat="server"></asp:TextBox>
            <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
            <br />
            <br />
            <asp:HyperLink ID="linkSignin" runat="server" NavigateUrl="~/Login.aspx">Do you have an acccount? Sign in</asp:HyperLink>
            
        </div>
    </form>
</body>
</html>
