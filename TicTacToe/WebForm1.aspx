<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TicTacToe.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tic Tac Toe</title>
    <style>
        body {
            background-color: #333333;
            color: white;
        }
        #messsage {
            color: red;
        }
        #turnIndicator {
            color: white;
        }
    </style>
    <link href="TicTacToeStyle.css" rel="stylesheet" />
    <script src="TicTacToe.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="board">
                <asp:Label ID="turnIndicator" runat="server" Text="It's X's turn"></asp:Label>
                <br/>
                <asp:TextBox ID="box1" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box2" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box3" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <br />
                <asp:TextBox ID="box4" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box5" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box6" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <br />
                <asp:TextBox ID="box7" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box8" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
                <asp:TextBox ID="box9" runat="server" CssClass="grid-box" ReadOnly="true" onclick="boxClick(this)"></asp:TextBox>
            </div>
            <asp:Label ID="invalidMove" runat="server" CssClass="message"></asp:Label>
            <asp:Label ID="winMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
