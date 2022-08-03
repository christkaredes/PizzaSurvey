<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewApplications.aspx.cs" Inherits="Survey.ViewApplications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Table structure of DB-->
            <table border="1">
                <tr>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Phone Number</td>
                    <td>Recommends</td>
                    <td>Topping</td>
                    <td>Size</td>
                    <td>Rating</td>
                    <td>Why</td>
                </tr>
                <asp:Literal ID="litRegistrants" runat="server"></asp:Literal>
            </table>
            <br /><br />
            <asp:HyperLink ID="Home" runat="server" Text="Back to Survey" NavigateUrl="~/index.aspx"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
