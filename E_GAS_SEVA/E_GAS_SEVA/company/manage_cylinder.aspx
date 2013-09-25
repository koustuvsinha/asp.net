<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage_cylinder.aspx.cs" Inherits="E_GAS_SEVA.manage_cylinder" %>

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
                    E GAS SEva&nbsp; -&nbsp; add/remove cylinder</h1>
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
				<asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 548px; top: 387px; position: absolute; font-weight: 700; color: #0000CC; font-size: medium"></asp:Label>
				<asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 463px; top: 348px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Enter ID :"></asp:Label>
                <asp:Button ID="Button2" runat="server" 
                    style="z-index: 1; left: 758px; top: 343px; position: absolute; height: 25px; width: 170px; font-weight: 700;" 
                    Text="Delete" onclick="Button2_Click" />
                <asp:TextBox ID="TextBox3" runat="server" 
                    
                    style="z-index: 1; left: 546px; top: 344px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" 
                    style="z-index: 1; left: 377px; top: 298px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Cylinder ID Generated :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" 
                    
                    style="z-index: 1; left: 544px; top: 295px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" 
                    style="z-index: 1; left: 544px; top: 247px; position: absolute; height: 25px; width: 171px; font-weight: 700;" 
                    Text="Add New Cylinder" onclick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" 
                    style="z-index: 1; left: 387px; top: 197px; position: absolute; font-weight: 700; color: #003399;" 
                    Text="Total Cylinder Count :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    
                    style="z-index: 1; left: 543px; top: 194px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
				</div>
				</form>
</body>
</html>
