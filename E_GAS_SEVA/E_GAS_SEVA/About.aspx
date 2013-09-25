<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reactivate.aspx.cs" Inherits="E_GAS_SEVA.About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    E GAS SEva&nbsp; -&nbsp; About us</h1>
            </div>
            <div class="loginDisplay">
              <asp:Label ID="user12" runat="server" 
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
        </div>
        <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 232px; top: 180px; position: absolute; font-weight: 700" 
        Text="This Project has been created by :"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 265px; top: 225px; position: absolute" 
        Text="Koustuv Sinha, Institute of Engineering &amp; Management"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 264px; top: 283px; position: absolute" 
        
        Text="Priyanka Patwari, Calcutta Institute of Engineering &amp; Management"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 265px; top: 314px; position: absolute" 
        Text="Puja Manna, Calcutta Institue of Engineering &amp; Management"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 265px; top: 345px; position: absolute" 
        Text="Radhika Das, B. P. Poddar Institute of Management &amp; Technology"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 265px; top: 254px; position: absolute" 
        Text="Nilanjan Roy, Brainware Group Of Institutions"></asp:Label>
        </form>
</body>
</html>
