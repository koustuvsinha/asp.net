<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="terminate_account.aspx.cs" Inherits="E_GAS_SEVA.terminate_account" %>

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
                    -&nbsp; terminate account</h1>
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
                
            </div>

                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 370px; top: 332px; position: absolute; font-weight: 700; color: #003399;" 
                    
        
        
        Text="3. Return all the Cylinders (if present) within 7 days of application."></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 370px; top: 307px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="2. Fill up the Bank Challan for the Termination Fee."></asp:Label>
                <asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 369px; top: 284px; position: absolute; width: 922px; color: #003399; font-weight: 700;" 
                    
        
        
        Text="1. Fill up a Termination Form available at company offices and at your nearest dealer, and send the soft copy of the form to company@egas.com"></asp:Label>
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 370px; top: 247px; position: absolute; font-weight: 700; color: #003399;" 
                    
        
        
        Text="If a customer wants to terminate his/her account, the following process is to be undertaken by the customer :"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 373px; top: 214px; position: absolute; font-weight: 700; text-decoration: underline; color: #000000; font-size: medium; font-family: 'Segoe UI';" 
                    Text="Termination Procedure"></asp:Label>
			
            </form>
			

</body>
</html>
