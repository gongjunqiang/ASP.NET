<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo05.aspx.cs" Inherits="WebApp.ServerControl.Demo05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">超链接按钮</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ServerControl/1121.png" OnClick="ImageButton1_Click" />
            <br />
            <br />
            <br />

            学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" onClientClick="return confirm('确认删除吗?')" runat="server" Text="删除" OnClick="Button2_Click"/>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

        </div>
    </form>
</body>
</html>
