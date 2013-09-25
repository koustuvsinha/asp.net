﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validate_request.aspx.cs" Inherits="E_GAS_SEVA.dealer.validate_request" %>

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
                    E GAS SEva&nbsp; -&nbsp; accept new customer</h1>
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
				<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    style="z-index: 1; left: 1082px; top: 150px; position: absolute" 
                    Text="Accept" />
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    
                    
                    style="z-index: 1; left: 256px; top: 177px; position: absolute; height: 87px; width: 700px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Customer ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("customer_id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("customer_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fathers Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("fathers_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("fathers_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact No">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Change Status">
                         <ItemTemplate>
                                <asp:CheckBox  ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
				</div>
				<asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 1080px; top: 185px; position: absolute" 
        Text="Refresh" />
				</form>
</body>
</html>
