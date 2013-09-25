<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_connection.aspx.cs" Inherits="E_GAS_SEVA.new_connection" %>

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
                    E GAS SEva&nbsp; -&nbsp; new lpg connection</h1>
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
        
        
        style="z-index: 1; left: 0px; top: 190px; position: absolute; height: 27px; width: 1036px">
            <asp:TextBox ID="TextBox1" runat="server" 
    
                style="z-index: 1; left: 415px; top: 83px; position: absolute; height: 25px; width: 170px;" 
                CausesValidation="True"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" 
                
                style="z-index: 1; left: 415px; top: 137px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" 
                style="z-index: 1; left: 389px; top: 35px; position: absolute; font-weight: 700; color: #FF0000;" 
                Text="Fill up the form carefully providing all the details :"></asp:Label>
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 330px; top: 84px; position: absolute; height: 19px; font-weight: 700; color: #003399;" 
                Text="Name* :"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 313px; top: 197px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Address* :"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" 
                
                style="z-index: 1; left: 415px; top: 193px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 318px; top: 144px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Email ID :"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                style="z-index: 1; left: 417px; top: 254px; position: absolute; height: 25px; width: 170px;" 
                AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                style="z-index: 1; left: 417px; top: 308px; position: absolute; height: 25px; width: 170px;" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 334px; top: 307px; position: absolute; height: 17px; font-weight: 700; color: #003399;" 
                Text="City* :"></asp:Label>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 329px; top: 255px; position: absolute; font-weight: 700; color: #003399;" 
                Text="State* :"></asp:Label>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 669px; top: 138px; position: absolute; font-weight: 700; color: #003399;" 
                Text="DOB* : "></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" 
                style="z-index: 1; left: 416px; top: 356px; position: absolute; height: 25px; width: 170px;" 
                >
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label8" runat="server" 
                style="z-index: 1; left: 289px; top: 357px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Distributor *:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" 
                
                style="z-index: 1; left: 733px; top: 82px; position: absolute; height: 25px; width: 170px; margin-bottom: 1px;"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 614px; top: 85px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Fathers Name* :"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" 
                
                style="z-index: 1; left: 732px; top: 189px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" 
                style="z-index: 1; left: 632px; top: 252px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Phone No* :"></asp:Label>
            <asp:Button ID="Button1" runat="server" 
                style="z-index: 1; left: 405px; top: 411px; position: absolute; font-weight: 700;" 
                Text="Submit" onclick="Button1_Click" />
            <asp:TextBox ID="TextBox6" runat="server" 
                
                style="z-index: 1; left: 731px; top: 246px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 645px; top: 195px; position: absolute; font-weight: 700; color: #003399;" 
                Text="Pincode* :"></asp:Label>
    </asp:Panel>
        <asp:TextBox ID="TextBox7" runat="server" 
        
        style="z-index: 1; left: 733px; top: 322px; position: absolute; height: 25px; width: 170px;"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" 
        
        
        style="z-index: 1; left: 686px; top: 501px; position: absolute; font-weight: 700; color: #003399; font-size: large; width: 295px;"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        
        
        style="z-index: 1; left: 686px; top: 586px; position: absolute; font-weight: 700; color: #003399; font-size: x-large; height: 31px;"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 920px; top: 327px; position: absolute; color: #000099" 
        Text="(DD/MM/YYYY)"></asp:Label>
        </form>
</body>
</html>
