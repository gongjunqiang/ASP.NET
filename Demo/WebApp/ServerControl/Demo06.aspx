<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo06.aspx.cs" Inherits="WebApp.ServerControl.Demo06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="Gender" Text="男"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="女"/>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="https://www.baidu.com/" runat="server">超链接控件</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
