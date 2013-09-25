<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_register.aspx.cs" Inherits="E_GAS_SEVA.cust_register" %>

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
                    E GAS SEva&nbsp; -&nbsp; customer registration</h1>
            </div>
            <div class="loginDisplay">
                You are not Logged in</div>
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
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 408px; top: 174px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 282px; top: 177px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Enter Customer ID :"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        
        style="z-index: 1; left: 605px; top: 171px; position: absolute; font-weight: 700;" 
        Text="Submit" />
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 411px; top: 231px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        
        style="z-index: 1; left: 681px; top: 233px; position: absolute; height: 22px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 409px; top: 296px; position: absolute" 
        TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; left: 413px; top: 348px; position: absolute; font-weight: 700;" 
        Text="Register" />
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 294px; top: 236px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Customer Name :"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 608px; top: 236px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Address :"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 297px; top: 299px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Enter Password :"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        
        style="z-index: 1; left: 601px; top: 296px; position: absolute; font-weight: 700; color: #000066; font-size: large;"></asp:Label>
    </form>
</body>
</html>
