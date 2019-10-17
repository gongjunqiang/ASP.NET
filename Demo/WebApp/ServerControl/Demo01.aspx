<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo01.aspx.cs" Inherits="WebApp.ServerControl.Demo01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" name="txtName" value="" id="txtName"/><br />
            <input type="text" name="txtId" value="" id="txtId" runat="server"/><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
