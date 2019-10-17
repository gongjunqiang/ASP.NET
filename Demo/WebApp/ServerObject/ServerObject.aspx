<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerObject.aspx.cs" Inherits="WebApp.ServerObject.ServerObject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnTransfer" runat="server" Text="使用Server.Transfer()跳转到新页面" OnClick="btnTransfer_Click" />
            <br />
            <br />
            <asp:Button ID="btnRedirect" runat="server" Text="使用Response.Redirect跳转到新页面" OnClick="btnRedirect_Click" /><br />
        </div>
    </form>
</body>
</html>
