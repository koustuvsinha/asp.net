<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="termination.aspx.cs" Inherits="E_GAS_SEVA.dealer.termination" %>

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
                    E GAS SEva -&nbsp; termination 
                    procedure</h1>
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
                        <asp:MenuItem NavigateUrl="~/dealer/oredr_request.aspx" Text="Order Request" 
                            Value="Order Request"/>
						
                        <asp:MenuItem Text="Accept New Customer" Value="Accept New Customer" 
                            NavigateUrl="~/dealer/validate_request.aspx"></asp:MenuItem>
						
                        <asp:MenuItem Text="Transfer Request" Value="Transfer Request" 
                            NavigateUrl="~/dealer/transfer_request.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Customer Database" Value="Customer Database" 
                            NavigateUrl="~/dealer/cust_database.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Cylinder Stock" Value="Cylinder Stock" 
                            NavigateUrl="~/dealer/cylinder_stock.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Termination" Value="Termination" 
                            NavigateUrl="~/dealer/termination.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Request Cylinder" Value="Request Cylinder" 
                            NavigateUrl="~/dealer/request_cylinder.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Complaints" Value="Complaints" 
                            NavigateUrl="~/dealer/view_complaints.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/logout.aspx"></asp:MenuItem>
						
                    </Items>
                </asp:Menu>
				<asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 369px; top: 368px; position: absolute; font-weight: 700; color: #003399;" 
                    
                    Text="5. Failure to do the above tasks after filling application will lead to Penalty. "></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 369px; top: 335px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="4. Submit a account closing report along with the application."></asp:Label>
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 369px; top: 304px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="3. Return all the Cylinders within 7 days of application."></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 368px; top: 274px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="2. Fill up the Bank Challan for the Termination Fee."></asp:Label>
                <asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 368px; top: 242px; position: absolute; width: 741px; font-weight: 700; color: #003399;" 
                    
                    Text="1. Fill up a Termination Form available at company offices, and send the hard copy of the form to company@egas.com"></asp:Label>
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 366px; top: 207px; position: absolute; font-weight: 700; color: #003399;" 
                    
                    Text="If a dealer wants to terminate his dealership, the following process is to be undertaken by the dealer :"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 367px; top: 168px; position: absolute; font-weight: 700; text-decoration: underline; font-size: medium; font-family: 'Segoe UI'; color: #000000;" 
                    Text="Termination Procedure"></asp:Label>
				</div>
				</form>
</body>
</html>
