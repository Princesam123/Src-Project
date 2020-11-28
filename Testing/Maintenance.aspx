<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="Testing.Maintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
form {
     top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    padding: 70px 30px;
    border-radius: 15px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <h1 class="auto-style1">&nbsp;Maintenance</h1>
        <p class="auto-style1">&nbsp;</p>

        <h4 class="auto-style3">Area&nbsp;&nbsp; 
            
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="265px">
                <asp:ListItem>Weight Room</asp:ListItem>
                <asp:ListItem>Sport Club Room</asp:ListItem>
                <asp:ListItem>Main Gym Floor</asp:ListItem>
                <asp:ListItem>MAC Court</asp:ListItem>
                <asp:ListItem>Group Fitness 200</asp:ListItem>
                <asp:ListItem>Group Fitness 201</asp:ListItem>
                <asp:ListItem>Group Fitness 204</asp:ListItem>
                <asp:ListItem>Golf Simulator</asp:ListItem>
                <asp:ListItem>Racquetball Court</asp:ListItem>
                <asp:ListItem>Running Track</asp:ListItem>
                <asp:ListItem>Annex</asp:ListItem>
                <asp:ListItem>Sky Gym</asp:ListItem>
                <asp:ListItem>Qdoba Gaming Area</asp:ListItem>
                <asp:ListItem>The Hatfield</asp:ListItem>
                <asp:ListItem>Classroom 207</asp:ListItem>
                <asp:ListItem>Classroom 110</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <br />
        <h4 class="auto-style3">Equipment<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="265px"></asp:TextBox>
        </h4>
        <br />

        <div class="form-group">
                       <h4 class="auto-style3">Condition<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="265px">
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Average</asp:ListItem>
                            <asp:ListItem>Bad</asp:ListItem>
                            <asp:ListItem>Broken</asp:ListItem>
                        </asp:DropDownList>
                        </h4>
                    <div class="auto-style3" style="margin-left: 40px">
                        <br />                        
                    </div>
                </div>
        <div> 
         <h4 class="auto-style3"> Description <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="90px" TextMode="MultiLine" Width="290px"></asp:TextBox>
         </h4>
        </div>  
        <div class="auto-style1">
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="62px" Width="179px" CssClass="btn btn-primary" BackColor="#FF5050" Font-Size="X-Large" />
            <br />
        </div>
    </form>
</body>
</html>
