<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountSheet.aspx.cs" Inherits="Testing.CountSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CountSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:auto;border:5px solid Red">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="CtSheet" runat="server" Text="Count Sheet" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large"></asp:Label> </td>
            </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="AreaLbl" runat="server" Text="Area:"  ></asp:Label></td>               
                <td class="auto-style11"><asp:TextBox ID="TxtArea" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="EquipLbl" runat="server" Text="Equipment:"></asp:Label></td>                 
                <td class="auto-style11"><asp:TextBox ID="TxtEquip" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="RaceLbl" runat="server" Text="Race:"></asp:Label></td>
                <td class="auto-style11"><asp:DropDownList ID="RaceList" runat="server" style="height: 22px">
                    <asp:ListItem>Asian</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Hispanic</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="SexLbl" runat="server" Text="Sex:"></asp:Label></td>
                <td class="auto-style11"><asp:DropDownList ID="SexList" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                 <td class="auto-style2"><asp:Button ID="NextBtn" runat="server" Text="Next" BorderColor="White" Font-Bold="True" Font-Size="Large" ForeColor="Black" /></td>
                 <td class="auto-style8"><asp:Button ID="SaveBtn" runat="server" Text="Save" BorderColor="White" Font-Bold="True" Font-Size="Large" /></td>
            </tr>
            <tr> 
                <td class="auto-style9"><asp:Label ID="LblErrorMsg" runat="server" Text="Error. Not completed" ForeColor="Red" Visible="False"></asp:Label></td>
                <td class="auto-style12"><asp:Label ID="LblSavedMSg" runat="server" Text="Saved. Click Next to Continue" ForeColor="#6699FF" Visible="False"></asp:Label></td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
