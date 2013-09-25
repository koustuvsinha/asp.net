<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="E_GAS_SEVA.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    E GAS SEva<span class="Apple-style-span" 
        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal;  word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" 
        style="color: rgb(28, 28, 28); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 19px; "><span class="Apple-style-span" 
            style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><asp:HyperLink 
                        ID="HyperLink6" runat="server" NavigateUrl="~/dealer_form.aspx" 
                        style="z-index: 1; left: 1235px; top: 59px; position: absolute; width: 118px">Dealership Form</asp:HyperLink>
                    </span>
    </span></span>
                </h1>
            </div>
            <div class="loginDisplay">
             <asp:Label ID="user" runat="server" 
                    style="z-index: 1; left: 75px; top: 9px; position: absolute; width: 236px; color: #FFFFFF;" 
                    Text="You are not logged in"></asp:Label></div>
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
        <span class="Apple-style-span" 
        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal;  word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; ">
    <span class="Apple-style-span" 
        style="color: rgb(28, 28, 28); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 19px; ">
    <p style="text-align: justify; ">
        <span class="Apple-style-span" 
            style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">
        <span class="Apple-style-span" 
            style="color: rgb(28, 28, 28); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 19px;">
        .<asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Untitled2.png" 
            
            style="z-index: -5; left: 1px; top: 110px; position: absolute; height: 233px; width: 1343px" 
            ViewStateMode="Disabled" />
        </span></span></p>
    <span class="Apple-style-span" 
        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">
    <span class="Apple-style-span" 
        style="color: rgb(28, 28, 28); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 19px;">
    </span></span>
    <p style="text-align: justify; ">
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: -2px; top: 368px; position: absolute; height: 19px; width: 1025px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image6" runat="server" 
            
            style="z-index: 1; left: 1103px; top: 3px; position: absolute; height: 107px; width: 168px" 
            ImageUrl="~/Image/stacks_image_54_1.jpg" />
        <asp:Image ID="Image5" runat="server" 
            
            style="z-index: 1; left: 762px; top: 1px; position: absolute; height: 277px; width: 291px" 
            ImageUrl="~/Image/referral-guidelines.jpg" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/new_connection.aspx" 
        style="z-index: 1; left: 50px; top: 643px; position: absolute">Subscribe to a new connection</asp:HyperLink>
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/cust_register.aspx" 
        style="z-index: 1; left: 487px; top: 641px; position: absolute">Create a new account</asp:HyperLink>
    <asp:Image ID="Image2" runat="server" 
        
        style="z-index: 1; left: 49px; top: 371px; position: absolute; height: 275px; width: 290px; right: 695px;" 
        ImageUrl="~/Image/23nandan6.jpg" />
    </span></span>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/guidelines.aspx" 
            style="z-index: 1; left: 761px; top: 643px; position: absolute">Guidelines and safety measures</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/news.aspx" 
            
            style="z-index: 1; left: 1104px; top: 476px; position: absolute; width: 190px">News and press release</asp:HyperLink>
        <asp:Image ID="Image4" runat="server" 
            
            style="z-index: 1; left: 416px; top: 373px; position: absolute; width: 291px; height: 275px" 
            ImageUrl="~/Image/CreateNewAccount.png" />
    </p>
    <asp:Image ID="Image7" runat="server" 
        
        style="z-index: 1; left: 1099px; top: 524px; position: absolute; height: 106px; width: 167px" 
        ImageUrl="~/Image/tariff.jpg" />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/tariff.aspx" 
        
        style="z-index: 1; left: 1105px; top: 633px; position: absolute; height: 17px;">Tariff</asp:HyperLink>
        </form>
</body>
</html>