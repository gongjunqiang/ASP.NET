<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            第一个文本框：<asp:TextBox ID="txt1" runat="server"></asp:TextBox><br />
            第二个文本框：<asp:TextBox ID="txt2" runat="server"></asp:TextBox><br />
            <asp:Button ID="btn" runat="server" Text="复制到第二个文本框" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>
