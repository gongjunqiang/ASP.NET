<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET.Demo04.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="ckb1" runat="server" text="衬衣"/><br />
            <asp:CheckBox ID="ckb2" runat="server" text="外套"/><br />
            <asp:CheckBox ID="ckb3" runat="server" text="帽子"/><br />
            <asp:CheckBox ID="ckb4" runat="server" text="裤子"/><br />
            <asp:CheckBox ID="ckb5" runat="server" text="鞋子"/>
            <br />
            <br />
            <asp:Button ID="btnAddcCart" runat="server" Text="添加到购物车" OnClick="btnAddcCart_Click" /> &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDisplayCart" runat="server" Text="显示购物车" OnClick="btnDisplayCart_Click" />
              <br />
            <br />
            <asp:Literal ID="ItaMsg" runat="server"></asp:Literal>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Button ID="btnLoginout" runat="server" Text="退出登录" OnClick="btnLoginout_Click" />
        </div>
    </form>
</body>
</html>
