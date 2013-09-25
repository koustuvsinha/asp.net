<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_cylinder.aspx.cs" Inherits="E_GAS_SEVA.dealer.request_cylinder" %>

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
                    E GAS SEva 
                    -&nbsp; request cylinder</h1>
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
				<asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 675px; top: 179px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Empty Cylinders:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" 
                    style="z-index: 1; left: 785px; top: 178px; position: absolute; height: 21px"></asp:TextBox>
				<asp:Label ID="Label3" runat="server" 
                    
                    style="z-index: 1; left: 469px; top: 320px; position: absolute; font-weight: 700; color: #0000CC; font-size: large;"></asp:Label>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 465px; top: 262px; position: absolute; font-weight: 700;" 
                    Text="Place Order" />
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 337px; top: 222px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Request Cylinders :"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 392px; top: 176px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Order ID:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 465px; top: 174px; position: absolute" 
                    ReadOnly="True"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 784px; top: 219px; position: absolute; font-weight: 700;" 
                    Text="Refill Cylinders" />
				</div>
				<asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 466px; top: 219px; position: absolute"></asp:TextBox>
				</form>
</body>
</html>
