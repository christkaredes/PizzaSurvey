<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Survey.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza Survey</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" media="screen" />  
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <asp:Panel ID="pnlForm" runat="server">
                <h1>Pizza Survey!</h1>
                <!--FIRST NAME-->
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator 
                    ID="valFirstName" 
                    runat="server" 
                    ControlToValidate="txtFirstName" 
                    EnableClientScript="true" 
                    ErrorMessage="First name required" 
                    Forecolor="Red">
                </asp:RequiredFieldValidator>

                <br /><br />

                <!--LAST NAME-->
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator 
                    ID="valLastName" 
                    runat="server" 
                    ControlToValidate="txtLastName" 
                    EnableClientScript="true" 
                    ErrorMessage="Last name required" 
                    Forecolor="Red">
                </asp:RequiredFieldValidator>

                <br /><br />

                <!--PHONE NUMBER-->
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: "></asp:Label>
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox> 

                <asp:RequiredFieldValidator 
                    ID="valPhoneNumber" 
                    runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    EnableClientScript="true" 
                    ErrorMessage="Please enter your phone number"
                    Forecolor="Red">
                </asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator 
                    ID="valexprPhoneNumber" 
                    runat="server" 
                    ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$" 
                    EnableClientScript="true" 
                    ControlToValidate="txtPhoneNumber" 
                    ErrorMessage="Please enter a valid phone number" 
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
                
                <br /><br />

                <!--PIZZA TOPPINGS-->
                <asp:Label ID="lblTopping" runat="server" Text="What's your favorite topping?: "></asp:Label>
                <asp:DropDownList runat="server" ID="drpTopping">
                    <asp:ListItem Text="Pepperoni" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Cheese" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Sausage" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Olives" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Anchovies" Value="5"></asp:ListItem>
                </asp:DropDownList>

                <br /><br />

                <!--PIZZA SIZE-->
                <asp:Label ID="lblSize" runat="server" Text="Size: "></asp:Label>
                <asp:DropDownList runat="server" ID="drpSize">
                    <asp:ListItem Text="Small" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Medium" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Large" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Colossal" Value="4"></asp:ListItem>
                </asp:DropDownList>

                <br /><br />

                <!--PIZZA RATING-->
                <asp:Label ID="lblRating" runat="server" Text="On a scale of 1 to 10, how much do you like pizza?"></asp:Label>
                <asp:DropDownList runat="server" ID="drpRating">
                    <asp:ListItem Text="1 (Hate it)" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    <asp:ListItem Text="10 (Love it)" Value="10"></asp:ListItem>
                </asp:DropDownList>

                <br /><br />

                <!--RECOMMEND-->
                <asp:Label ID="lblRecommend" runat="server" Text="Do you recommend pizza to friends?: "></asp:Label>
                <asp:Checkbox ID="chkRecommend" runat="server"></asp:Checkbox> 

                <br /><br />

                <!--WHY DO YOU LIKE PIZZA?-->
                <asp:Label ID="lblWhy" runat="server" Text="In a sentence, explain why you do (or do not) like pizza:"></asp:Label> <br />
                <asp:Textbox ID="txtWhy" TextMode="MultiLine" Columns="55" runat="server"></asp:Textbox> 

                <asp:RequiredFieldValidator 
                    ID="valWhy" 
                    runat="server" 
                    ControlToValidate="txtWhy" 
                    EnableClientScript="true" 
                    ErrorMessage="Please explain...please..." 
                    Forecolor="Red">
                </asp:RequiredFieldValidator>

                <br /><br />

                <asp:HyperLink ID="DbLink1" runat="server" Text="View Database" NavigateUrl="~/ViewApplications.aspx"></asp:HyperLink>

                <br /><br />

                <!--BUTTON-->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </asp:Panel>

                <!--RESULTS-->
            <asp:Panel ID="pnlConfirm" runat="server" Visible="false">
                <h1>Thank you for your time!</h1>
                First Name: <asp:Label ID="lblFirstNameResults" runat="server"></asp:Label>       <br /> <br />
                Last Name: <asp:Label ID="lblLastNameResults" runat="server"></asp:Label>         <br /> <br />
                Phone Number: <asp:Label ID="lblPhoneNumberResults" runat="server"></asp:Label>   <br /> <br />
                Pizza Topping: <asp:Label ID="lblToppingResults" runat="server"></asp:Label>      <br /> <br />
                Pizza Size: <asp:Label ID="lblSizeResults" runat="server"></asp:Label>            <br /> <br />
                Pizza Rating: <asp:Label ID="lblRatingResults" runat="server"></asp:Label>        <br /> <br />
                Recommend: <asp:Label ID="lblRecommendResults" runat="server"></asp:Label>        <br /> <br />
                Favorite Part: <asp:Label ID="lblWhyResults" runat="server"></asp:Label>          <br /> <br />
                <!--Some navigation so you don't get stuck-->
                <asp:HyperLink ID="DbLink2" runat="server" Text="View Database" NavigateUrl="~/ViewApplications.aspx"></asp:HyperLink>
            </asp:Panel>
        </div>
        
    </form>
</body>
</html>
