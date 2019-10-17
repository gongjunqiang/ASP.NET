<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET.Demo05.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请输入用户名：<asp:TextBox ID="text1" runat="server"></asp:TextBox>
            <asp:Button ID="btn" runat="server" Text="将用户名保存到Cookie" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>
