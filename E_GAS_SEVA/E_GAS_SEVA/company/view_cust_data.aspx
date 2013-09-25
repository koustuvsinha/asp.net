<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_cust_data.aspx.cs" Inherits="E_GAS_SEVA.view_cust_data" %>

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
                    E GAS SEva&nbsp; -&nbsp; Customer database</h1>
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
                        <asp:MenuItem NavigateUrl="~/company/view_cust_data.aspx" Text="Customer DataBase" 
                            Value="Customer DataBase"/>
						
                        <asp:MenuItem Text="Dealer DataBase" Value="Dealer DataBase" 
                            NavigateUrl="~/company/dealer_data.aspx"></asp:MenuItem>
						
                        <asp:MenuItem Text="Add/Remove Cylinder" Value="Add Cylinder" 
                            NavigateUrl="~/company/manage_cylinder.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Assign Cylinder" Value="Assign Cylinder" 
                            NavigateUrl="~/company/assign_cylinder.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Cylinder DataBase" Value="Cylinder DataBase" 
                            NavigateUrl="~/company/cylinder_data.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Dealer Cylinder Request" Value="Dealer Cylinder Request" 
                            NavigateUrl="~/company/refill.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Add Dealer" Value="Add Dealer" 
                            NavigateUrl="~/company/add_dealer.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Tariff and Subsidy" Value="Tariff and Subsidy" 
                            NavigateUrl="~/company/tariff_subsidy.aspx"></asp:MenuItem>
						
                        <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/logout.aspx"></asp:MenuItem>
						
                    </Items>
                </asp:Menu>
                <asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 408px; top: 259px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Select Distributor:"></asp:Label>
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 449px; top: 218px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Select City :"></asp:Label>
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 445px; top: 167px; position: absolute; height: 17px; font-weight: 700; color: #003399;" 
                    Text="Select State :"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" 
        
        style="z-index: 1; left: 547px; top: 257px; position: absolute; height: 25px; width: 170px" 
        AutoPostBack="True" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" 
        
        style="z-index: 1; left: 546px; top: 214px; position: absolute; width: 170px; height: 25px; bottom: 172px" 
        AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
				</div>
				<asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="z-index: 1; left: 545px; top: 167px; position: absolute; width: 170px; height: 25px; " 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Bihar</asp:ListItem>
            <asp:ListItem>Delhi</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>West Bengal</asp:ListItem>
    </asp:DropDownList>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        
        
        
        
        style="z-index: 1; left: 321px; top: 308px; position: absolute; height: 114px; width: 805px" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="Customer ID" />
                <asp:BoundField DataField="name" HeaderText="Customer Name" />
                <asp:BoundField DataField="fathers_name" HeaderText="Fathers Name" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="distributor_name" HeaderText="Distributor Name" />
                <asp:BoundField DataField="booking_count" HeaderText="Booking Count" />
                <asp:BoundField DataField="subsidy_count" HeaderText="Subsidy Left" />
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
				</form>
				
</body>
</html>
