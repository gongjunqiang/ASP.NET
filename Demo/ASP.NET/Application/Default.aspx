<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET.Demo06.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <br />   <asp:Literal ID="Ita" runat="server">您是本网站第0位访问者!</asp:Literal><br />
            <asp:Button ID="btn" runat="server" Text="查看等钱用户的session信息" OnClick="btn_Click" /><br />
            <asp:Literal ID="Ita1" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
