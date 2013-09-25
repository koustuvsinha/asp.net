<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transfer.aspx.cs" Inherits="E_GAS_SEVA.transfer" %>

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
                    E GAS SEva -&nbsp; transfer connection&nbsp;
                </h1>
            </div>
            <div class="loginDisplay">
                <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 119px; top: 9px; position: absolute; width: 236px" 
                    Text="You are not logged in"></asp:Label></div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/index.aspx" Text="Home"/>
                        <asp:MenuItem Text="Search Distributor" Value="Search Distributor" 
                            NavigateUrl="~/search_dist.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Tariff" Value="Tariff" NavigateUrl="~/tariff.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Customer Care" Value="Customer Care" 
                            NavigateUrl="~/Customer_Care.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="GET LPG" Value="GET LPG">
                            <asp:MenuItem Text="New Connection" Value="New Connection" 
                                NavigateUrl="~/new_connection.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Transfer Connection" Value="Transfer Connection" 
                                NavigateUrl="~/customer/transfer.aspx">
                            </asp:MenuItem>
                            <asp:MenuItem Text="How do i reactivate?" Value="How do i reactivate?" 
                                NavigateUrl="~/reactivate.aspx">
                            </asp:MenuItem>
                             <asp:MenuItem Text="Surrender Connection" Value="Surrender Connection" 
                                NavigateUrl="~/customer/terminate_account.aspx">
                            </asp:MenuItem>
                        </asp:MenuItem>
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
        <div class = "hide2">
                <asp:Menu ID="Menu2" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Vertical">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/customer/online_booking.aspx" 
                            Text="Book LPG Online" Value="Book LPG"/>
						
                        <asp:MenuItem Text="Update Account" Value="Update Account" 
                            NavigateUrl="~/customer/update_account.aspx"></asp:MenuItem>
						
                        <asp:MenuItem Text="Account History " Value="Account History " 
                            NavigateUrl="~/customer/account_history.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Order Status" Value="Order Status" 
                            NavigateUrl="~/customer/delivery_status.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Transfer Account" Value="Transfer Account" 
                            NavigateUrl="~/customer/transfer.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Renewal" Value="Renewal" 
                            NavigateUrl="~/customer/renewal.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Terminate Account" Value="Terminate Account" 
                            NavigateUrl="~/customer/terminate_account.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/logout.aspx"></asp:MenuItem>
						
                    </Items>
                </asp:Menu>
                <asp:Label ID="Label10" runat="server" 
                    style="z-index: 1; left: 280px; top: 397px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Enter New Address :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" 
                    style="z-index: 1; left: 424px; top: 392px; position: absolute; height: 22px"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" 
                    
                    style="z-index: 1; left: 336px; top: 137px; position: absolute; font-weight: 700; color: #0000CC;"></asp:Label>
                <asp:Label ID="Label8" runat="server" 
                    
                    style="z-index: 1; left: 604px; top: 179px; position: absolute; font-weight: 700; color: #0000CC; font-size: x-large; width: 349px;"></asp:Label>
</div> 
        <asp:TextBox ID="TextBox1" runat="server" 
        
        style="z-index: 1; left: 420px; top: 179px; position: absolute; right: 565px;"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 423px; top: 222px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 301px; top: 182px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Customer ID :"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 277px; top: 224px; position: absolute; font-weight: 700; color: #003399;" 
        Text="Current Distributor :"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        style="z-index: 1; left: 423px; top: 299px; position: absolute" 
        AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Maharasthra</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        style="z-index: 1; left: 422px; top: 336px; position: absolute" 
        AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
  
        <asp:Label ID="Label4" runat="server" 
    style="z-index: 1; left: 291px; top: 305px; position: absolute; height: 15px; font-weight: 700; color: #003399;" 
            Text="Select New State :"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 295px; top: 338px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Select New City :"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 265px; top: 262px; position: absolute; font-weight: 700; color: #003399; bottom: 129px;" 
            Text="Preferred Distributor :"></asp:Label>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 617px; top: 390px; position: absolute; font-weight: 700;" 
        Text="Submit" onclick="Button1_Click" />
        <asp:DropDownList ID="DropDownList3" runat="server" 
            style="z-index: 1; left: 782px; top: 316px; position: absolute" 
        AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 620px; top: 318px; position: absolute; font-weight: 700; color: #003399;" 
            Text="Select new Distributor :"></asp:Label>
   
        </form>
</body>
</html>
