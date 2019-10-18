<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo01.aspx.cs" Inherits="Validate.Demo01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="txtUserName" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="提交验证"/>
            <br />
            <br />
            用户密码：<asp:TextBox ID="NewPwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NewPwd" ErrorMessage="请输入密码!" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            确认密码：<asp:TextBox ID="ConfirmPwd" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致！" ControlToCompare="NewPwd" ControlToValidate="ConfirmPwd" Display="Dynamic" ForeColor="#FF0066"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPwd" Display="Dynamic" ErrorMessage="请输入密码！" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            学员体重：<asp:TextBox ID="he" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="体重在70-100之间！" ControlToValidate="he" MaximumValue="100" MinimumValue="70" Type="Integer" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="he" Display="Dynamic" ErrorMessage="不能为空!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            出生日期:<asp:TextBox ID="time" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="时间在好多之间!" ControlToValidate="time" Display="Dynamic" ForeColor="Red" MaximumValue="2100-1-1" MinimumValue="2000-1-1" Type="Date"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="time" Display="Dynamic" ErrorMessage="不能为空!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
