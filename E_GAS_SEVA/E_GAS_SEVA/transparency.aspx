<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transparency.aspx.cs" Inherits="E_GAS_SEVA.transparency" %>

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
                    E GAS SEva -&nbsp; transparency portal</h1>
            </div>
            <div class="loginDisplay">
               <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 128px; top: 11px; position: absolute; width: 239px" 
                    Text="You are not Logged in"></asp:Label></div>
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
        
        
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        style="z-index: 1; left: 398px; top: 246px; position: absolute; width: 170px; height: 25px; bottom: 140px" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 284px; top: 246px; position: absolute; font-weight: 700; color: #003399; bottom: 145px;" 
            Text="Select City :"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 242px; top: 295px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Select Distributor :"></asp:Label>
    </div>
        <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 279px; top: 201px; position: absolute; color: #003399; font-weight: 700;" 
        Text="Select State :"></asp:Label>
        
        
        <asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="z-index: 1; left: 398px; top: 199px; position: absolute; width: 170px; height: 25px; " 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Bihar</asp:ListItem>
            <asp:ListItem>Delhi</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>West Bengal</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        
        style="z-index: 1; left: 399px; top: 292px; position: absolute; height: 25px; width: 170px" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
        </form>
</body>
</html>
