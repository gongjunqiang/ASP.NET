<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET.Demo03.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            点击计数：<br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="点击计数" OnClick="Button1_Click" />
            <br />
            <br />
            点击了<asp:Literal ID="Literal1" runat="server">0</asp:Literal>次！
        </div>
    </form>
</body>
</html>
