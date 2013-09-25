<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tariff.aspx.cs" Inherits="E_GAS_SEVA.tariff" %>

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
                    E GAS SEva -&nbsp; TARIFF</h1>
            </div>
            <div class="loginDisplay">
               <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 75px; top: 9px; position: absolute; width: 236px; color: #FFFFFF;" 
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
        <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 384px; top: 312px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Subsidy Amount per customer per calendar year : 6"></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 384px; top: 278px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Non Subsidized Tariff : Rs 990/-"></asp:Label>
                <asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 381px; top: 244px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Subsidized Tariff : Rs 410/-"></asp:Label>
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 382px; top: 211px; position: absolute; text-decoration: underline; font-weight: 700; color: #000000;" 
                    Text="CURRENT TARIFF :"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 379px; top: 173px; position: absolute; height: 21px; width: 389px; font-weight: 700; color: #003399;" 
                    
            Text="The Tariff and Subsidy Count are set as per Govt of India Rule."></asp:Label>
        </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/tariff.jpg" 
        style="z-index: -5; left: 70px; top: 162px; position: absolute; height: 219px; width: 275px" />
        </form>
</body>
</html>
