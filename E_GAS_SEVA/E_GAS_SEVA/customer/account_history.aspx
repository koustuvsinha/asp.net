<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_history.aspx.cs" Inherits="E_GAS_SEVA.account_history" %>

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
                    -&nbsp; account history</h1>
            </div>
            <div class="loginDispl">
                <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 1083px; top: 23px; position: absolute; width: 236px; color: #FFFFFF;" 
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
				<asp:Label ID="Label8" runat="server" 
                    style="z-index: 1; left: 279px; top: 224px; position: absolute; font-weight: 700; color: #0000CC" 
                    Text="Dealer Information : "></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 802px; top: 175px; position: absolute; font-size: xx-large; font-weight: 700; color: #0000CC" 
                    Text="0"></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 636px; top: 191px; position: absolute; font-weight: 700; color: #0000CC" 
                    Text="Total Cylinders Ordered :"></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 275px; top: 190px; position: absolute; width: 170px; font-weight: 700; color: #0000CC; right: 589px" 
                    Text="Subsidized Cylinders Left :"></asp:Label>
				<asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 633px; top: 139px; position: absolute; font-weight: 700; color: #003399; font-size: large;" 
                    Text="Account Valid Upto :"></asp:Label>
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    
                    style="z-index: 1; left: 272px; top: 255px; position: absolute; height: 141px; width: 637px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="order_id" HeaderText="Order_ID" />
                        <asp:BoundField DataField="order_date" HeaderText="Order Date" />
                        <asp:BoundField DataField="status" HeaderText="Order Status" />
                        <asp:BoundField DataField="cylinder_id" HeaderText="Assigned Cylinder ID" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 456px; top: 142px; position: absolute" 
                    ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 239px; top: 145px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Account History for Customer ID :"></asp:Label>
				</div>
				<asp:Label ID="Label3" runat="server" 
           style="z-index: 1; left: 838px; top: 139px; position: absolute; font-weight: 700; color: #003399; font-size: large;" 
           Text="Date"></asp:Label>
				<asp:Label ID="Label5" runat="server" 
           style="z-index: 1; left: 457px; top: 173px; position: absolute; font-weight: 700; font-size: xx-large; color: #0000CC" 
           Text="0"></asp:Label>
       <asp:Label ID="Label9" runat="server" 
           style="z-index: 1; left: 421px; top: 225px; position: absolute; font-weight: 700; color: #0000CC" 
           Text="Name, City"></asp:Label>
				</form>
				
</body>
</html>
