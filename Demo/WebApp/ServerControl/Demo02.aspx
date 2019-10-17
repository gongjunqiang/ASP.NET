<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo02.aspx.cs" Inherits="WebApp.ServerControl.Demo02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Lable标签</asp:Label>
            <br />
            <br />
            <asp:Literal ID="Literal1" runat="server">纯文本</asp:Literal>

        </div>
    </form>
</body>
</html>
