<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="ASP.NET.Demo02.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Default2.aspx?name=xiaowang&age=20">跳转到第二个页面</a>
              <a href="Default3.aspx">输出浏览器信息</a>
              <a href="Default4.aspx?r=2000">测试重定向</a>
        </div>
    </form>
</body>
</html>
