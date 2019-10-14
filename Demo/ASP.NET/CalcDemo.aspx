<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalcDemo.aspx.cs" Inherits="ASP.NET.CalcDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>基于事件加控件实现计算器</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>+
            <asp:TextBox ID="txtnum2" runat="server"></asp:TextBox>=
            <asp:TextBox ID="result" runat="server"></asp:TextBox>
            <asp:Button ID="btnCal" runat="server" Text="计算" OnClick="btnCal_Click" />
            <%
                string info = "哈哈哈。我说啥子";
            %>
            <% =info%>

        </div>
    </form>
</body>
</html>
