<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testapp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            


            Name <asp:TextBox ID="txtuser" runat="server" />
            <asp:Button ID="btn" Text="Add User" runat="server" OnClick="btn_Click" />


        </div>
    </form>
</body>
</html>
