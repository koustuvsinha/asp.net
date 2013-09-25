<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_login.aspx.cs" Inherits="E_GAS_SEVA.cust_login" %>

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
                    -&nbsp; customer login</h1>
            </div>
            <div class="loginDisplay">
                <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 119px; top: 9px; position: absolute; width: 236px" 
                    Text="You are not logged in"></asp:Label></div>
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
        style="z-index: 1; left: 388px; top: 202px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 389px; top: 248px; position: absolute" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 261px; top: 207px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Enter Customer ID :"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 269px; top: 251px; position: absolute; height: 17px; color: #003399; font-weight: 700;" 
        Text="Password :"></asp:Label>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 392px; top: 311px; position: absolute; font-weight: 700;" 
        Text="Login" onclick="Button1_Click" />
        <asp:HyperLink ID="HyperLink1" runat="server" 
        style="z-index: 1; left: 465px; top: 316px; position: absolute; font-weight: 700;" 
        NavigateUrl="~/cust_register.aspx" ForeColor="#000099">Register</asp:HyperLink>
        <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 391px; top: 284px; position: absolute; color: #FF0000"></asp:Label>
        </form>
</body>
</html>
