<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dealer_form.aspx.cs" Inherits="E_GAS_SEVA.dealer_form" %>

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
                    E GAS SEva -&nbsp; new dealer form
                </h1>
            </div>
            <div class="loginDisplay">
                You are not Logged in</div>
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
        <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 0px; top: 169px; position: absolute; height: 329px; width: 1036px">
            <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 101px; top: 40px; position: absolute; text-decoration: underline; color: #000000; font-weight: 700; font-size: medium; font-family: 'Segoe UI';" 
                Text="Fill up the following form carefully :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" 
                style="z-index: 1; left: 462px; top: 81px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 358px; top: 85px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Dealer Name :"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" 
                style="z-index: 1; left: 462px; top: 128px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 389px; top: 131px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Address :"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                style="z-index: 1; left: 468px; top: 166px; position: absolute">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 369px; top: 170px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Select State :"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                style="z-index: 1; left: 467px; top: 206px; position: absolute">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 377px; top: 211px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Select City :"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" 
                style="z-index: 1; left: 464px; top: 254px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 390px; top: 256px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Pincode :"></asp:Label>
            <asp:Label ID="Label8" runat="server" 
                style="z-index: 1; left: 170px; top: 293px; position: absolute; font-weight: 700; color: #003399;" 
                Text="For online account creation, enter password :"></asp:Label>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                
                style="z-index: 1; left: 462px; top: 347px; position: absolute; font-weight: 700;" 
                Text="Submit" />
            <asp:TextBox ID="TextBox5" runat="server" 
                style="z-index: 1; left: 464px; top: 293px; position: absolute" 
                TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" 
                style="z-index: 1; left: 802px; top: 292px; position: absolute" 
                TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 667px; top: 296px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Re-type Password :"></asp:Label>
            <asp:Label ID="Label10" runat="server" 
                
                
                
                style="z-index: 1; left: 708px; top: 84px; position: absolute; font-weight: 700; color: #003399; font-size: large; width: 631px;"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" 
                style="z-index: 1; left: 803px; top: 255px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 725px; top: 259px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Contact :"></asp:Label>
    </asp:Panel>
    <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 569px; top: 517px; position: absolute; font-weight: 700;" 
        Text="Clear" onclick="Button2_Click" />
        </form>
</body>
</html>
