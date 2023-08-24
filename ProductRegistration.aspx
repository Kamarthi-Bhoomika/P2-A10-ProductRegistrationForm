<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="WebAppProductRegistrationForm.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <div class="col-md-4"><asp:Image runat="server" ID="Image1" ImageUrl="~/Images/p1.jfif"
    width="410px" Height="269px" CssClass="img-fluid" /></div>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Product Name</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtName" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Category</td>
            <td>
                <asp:DropDownList ID="DdlCaterogy" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="DdlCaterogy" ErrorMessage="Select Category" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Price</td>
            <td>
                <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="TxtPrice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter only number " ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description</td>
            <td>
                <asp:TextBox ID="TxtDesc" runat="server" Height="95px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDesc" ErrorMessage="Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                    
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Release Date</td>
            <td>
                <asp:Calendar ID="CalRDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="BtnRProduct" runat="server" OnClick="BtnRProduct_Click" Text="Register Product" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Label ID="LblInfo" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
