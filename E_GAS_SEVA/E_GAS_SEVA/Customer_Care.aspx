<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Care.aspx.cs" Inherits="E_GAS_SEVA.Customer_Care" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    E GAS SEva&nbsp; 
                    -&nbsp; customer care</h1>
            </div>
            <div class="loginDisplay">
                <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 128px; top: 11px; position: absolute; width: 239px" 
                    Text="You are not Logged in"></asp:Label>
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" 
                    IncludeStyleBlock="false" Orientation="Horizontal" ViewStateMode="Enabled">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/index.aspx" Text="Home"/>
                        <asp:MenuItem Text="GET LPG" Value="GET LPG">
                            <asp:MenuItem Text="New Connection" Value="New Connection" 
                                NavigateUrl="~/new_connection.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="How do i reactivate?" Value="How do i reactivate?" 
                                NavigateUrl="~/reactivate.aspx">
                            </asp:MenuItem>
                             <asp:MenuItem Text="Surrender Connection" Value="Surrender Connection" 
                                NavigateUrl="~/customer/terminate_account.aspx">
                            </asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Search Distributor" Value="Search Distributor" 
                            NavigateUrl="~/search_dist.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Tariff" Value="Tariff" NavigateUrl="~/tariff.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Customer Care" Value="Customer Care" 
                            NavigateUrl="~/Customer_Care.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Transparency Portal" Value="Transparency Portal" 
                            NavigateUrl="~/transparency.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Guidelines &amp; Safety Tips" 
                            Value="Guidelines &amp; Safety Tips" NavigateUrl="~/guidelines.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Login" Value="Login">
                            <asp:MenuItem Text="Customer Login" Value="Customer Login" 
                                NavigateUrl="~/cust_login.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Company  &amp; Distributor Login" 
                                Value="Company &amp; Distributor Login" 
                                NavigateUrl="~/comp_login_dealer.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="About Us" Value="About Us">
                        </asp:MenuItem>
                        <asp:MenuItem Text="News and Press Release" Value="News and Press Release" 
                            NavigateUrl="~/news.aspx">
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        </div>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 0px; top: 125px; position: absolute; height: 450px; width: 1303px">
        <asp:TextBox ID="TextBox2" runat="server" 
    
            style="z-index: 1; left: 385px; top: 194px; position: absolute; height: 146px; width: 721px; font-weight: 700;" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" 
            style="z-index: 1; left: 385px; top: 124px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Cylinder Un-delivered" AutoPostBack="True" Checked="True" 
            oncheckedchanged="RadioButton1_CheckedChanged" />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 260px; top: 72px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Enter Customer ID :"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 236px; top: 124px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Select Complaint Type :"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" 
            style="z-index: 1; left: 546px; top: 124px; position: absolute; width: 114px; font-weight: 700; color: #003399;" 
            Text="Booking Issues" AutoPostBack="True" 
            oncheckedchanged="RadioButton2_CheckedChanged" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 229px; top: 201px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Complaint Description :"></asp:Label>
        <asp:RadioButton ID="RadioButton3" runat="server" 
            style="z-index: 1; left: 671px; top: 126px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Payment Related :" AutoPostBack="True" 
            oncheckedchanged="RadioButton3_CheckedChanged" />
        <asp:RadioButton ID="RadioButton4" runat="server" 
            style="z-index: 1; left: 811px; top: 126px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Product Malfunctioning" AutoPostBack="True" 
            oncheckedchanged="RadioButton4_CheckedChanged" />
        <asp:RadioButton ID="RadioButton5" runat="server" 
            style="z-index: 1; left: 995px; top: 126px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Service Related" AutoPostBack="True" 
            oncheckedchanged="RadioButton5_CheckedChanged" />
        <asp:RadioButton ID="RadioButton6" runat="server" 
            style="z-index: 1; left: 1133px; top: 125px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Others" AutoPostBack="True" 
            oncheckedchanged="RadioButton6_CheckedChanged" />
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 384px; top: 371px; position: absolute; height: 25px; width: 116px; font-weight: 700;" 
            Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 539px; top: 369px; position: absolute; width: 95px; font-weight: 700;" 
            Text="Clear" />
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 405px; top: 69px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 756px; top: 71px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 643px; top: 73px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Enter Dealer ID :"></asp:Label>
    </asp:Panel>
        </form>
</body>
</html>
