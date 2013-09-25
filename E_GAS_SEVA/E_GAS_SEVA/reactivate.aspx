<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reactivate.aspx.cs" Inherits="E_GAS_SEVA.reactivate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
            height: 209px;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    E GAS SEva - CONNECTION REACTIVATION DETAILS</h1>
            </div>
            <div class="loginDisplay">
              <asp:Label ID="user12" runat="server" 
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
        <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 10px; top: 237px; position: absolute; height: 249px; width: 1316px; font-size: x-large">
            <span class="Apple-style-span" 
    
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" 
    
                style="color: rgb(28, 28, 28); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; ">
            <table border="0" cellpadding="2" cellspacing="2" 
    width="100%">
                <tr>
                    <td colspan="2">
                        For reactivating LPG connection which is deactivated due to not availing refill 
                        for more than 6 months it is suggested that the customer needs to complete the 
                        following requirement to the distributor and verification:<br /> An application is to be 
                        submitted which is available from your nearest dealer&#39;s office.</td>
                </tr>
                <tr>
                    <td colspan="2">
                        Process flow :-</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">
                        1.</td>
                    <td>
                        The form duly filled in with all details if not submitted earlier.</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">
                        2.</td>
                    <td>
                        The dealer shall check the consumer number and name and tally the signature with 
                        the SV if available or take a proof of identity. Dealer shall also check the 
                        form for its completeness.</td>
                </tr>
                <tr>
                    <td align="center" valign="middle" width="4%">
                        &nbsp;</td>
                    <td width="96%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        Based on the above the process of re-activation will be done. However the 
                        connection will not be re-activated in case the same appears in the list of 
                        suspected multiple connections. In such case, the dealer will get it verified 
                        and the customer will be asked to surrender the connection.</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
            </span></span>
    </asp:Panel>
        <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 428px; top: 174px; position: absolute; height: 27px; width: 406px; font-size: medium; font-weight: 700; font-family: Batang; text-transform: uppercase; color: #003399" 
        Text="           How Do I Reactivate My Connection?"></asp:Label>
        </form>
</body>
</html>
