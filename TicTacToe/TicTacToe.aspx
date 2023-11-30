<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/TicTacToe.aspx.cs" Inherits="TicTacToe.TicTacToe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> <h1 id="turnIndicator">It's X's turn</h1>
                     <div id="board">
                         <asp:TextBox ID="box1" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box2" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box3" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box4" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box5" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box6" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box7" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box8" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                         <asp:TextBox ID="box9" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                     </div>
                     <div id="message" style="color: red;"></div>
        </div>
    </form>
</body>
</html>
