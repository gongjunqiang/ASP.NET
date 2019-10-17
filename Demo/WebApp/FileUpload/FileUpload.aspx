<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="WebApp.FileUpload.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            文件上传：<asp:FileUpload ID="ful" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnFileUpload" runat="server" Text="开始上传" OnClick="btnFileUpload_Click" />
            <br />
            <br />
            <asp:Literal ID="Itmsg" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
