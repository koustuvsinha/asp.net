<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guidelines.aspx.cs" Inherits="E_GAS_SEVA.guidelines" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style7
        {
            font-family: "Plantagenet Cherokee";
            font-size: x-large;
        }
        .style10
        {
            font-family: "Bookman Old Style";
        }
        .style11
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    E GAS SEva -&nbsp; GUIDELINES AND SAFETY TIPS</h1>
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
        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2;  text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: none; -webkit-text-stroke-width: 0px; ">
    <span class="Apple-style-span" 
        style="font-family: Arial, sans-serif; font-size: 12px; line-height: 16px; text-align: left; ">
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-style-span" 
        style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2;  text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: none; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" 
        style="font-family: Arial, sans-serif; font-size: 12px; line-height: 16px; text-align: left; "><asp:Image 
            ID="Image1" runat="server" ImageUrl="~/Image/Untitled.jpg" 
            
            style="z-index: -4; left: 0px; top: 110px; position: absolute; height: 306px; width: 1361px" 
            CssClass="style10" />
    </span></span>&nbsp;&nbsp;&nbsp;&nbsp; </h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        &nbsp;</h3>
    <h3 class="style7" 
        style="padding: 0px; display: block; color: rgb(51, 51, 51); line-height: 1.3em; margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; text-align: left; font-style: normal; font-variant: normal;">
        <a id="SAFETY" 
            style="color: rgb(51, 102, 153); cursor: pointer;">Basic Safety:</a></h3>
    </span></span><span class="Apple-style-span" 
        style="line-height: 16px; text-align: left;"></span>
    <ul>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;
mso-bidi-font-size:13.5pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol;color:black;letter-spacing:1.0pt;mso-bidi-font-weight:
bold"><span style="mso-list:Ignore">
                <span 
            style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:
&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" class="style11">Select the least hazardous 
        gases that will work.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:black;
letter-spacing:1.0pt;mso-bidi-font-weight:bold"><span style="mso-list:Ignore"><span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Purchase only the necessary quantities.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:black;
letter-spacing:1.0pt;mso-bidi-font-weight:bold"><span style="mso-list:Ignore"><span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Select gases with returnable containers.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;letter-spacing:1.0pt;
mso-bidi-font-weight:bold"><span style="mso-list:Ignore"><span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp; </span></span></span><![endif]>
                <span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">When receiving gas cylinders:</span>
            </p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:&quot;Courier New&quot;;mso-fareast-font-family:
&quot;Courier New&quot;"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp; </span></span></span><![endif]>
                <span style="font-family:
&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" class="style11">Check for leaks</span><span style="font-size:12.0pt;font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;"><o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;letter-spacing:1.0pt;
mso-bidi-font-weight:bold"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Visually inspect the cylinder for damage<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;letter-spacing:1.0pt;
mso-bidi-font-weight:bold"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Ensure the valve cover and shipping cap is on<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;letter-spacing:1.0pt;
mso-bidi-font-weight:bold"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Check for proper labeling<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">&nbsp;If a cylinder is damaged, in poor condition, leaking, or the contents are 
        unknown, contact your cylinder vendor. Have the vendor </span><span class="style11">&nbsp;</span><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">return the damaged 
        cylinder to the manufacturer.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore"><span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;</span></span></span><![endif]><span style="font-family:
&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" class="style11">Wear appropriate foot 
        protection when engaged in moving or transporting cylinders:</span><span style="font-size:12.0pt;font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:Consolas"><o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;
mso-bidi-font-size:13.5pt;font-family:&quot;Courier New&quot;;mso-fareast-font-family:
&quot;Courier New&quot;"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>
                <span style="font-family:
&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" class="style11">Sturdy shoes are a minimum.</span><span style="font-size:13.5pt;font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;"><o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;letter-spacing:1.0pt;
mso-bidi-font-weight:bold"><span style="mso-list:Ignore">o<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp; </span></span></span><![endif]>
                <span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Steel-toed shoes if required by your supervisor, instructor or department.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;mso-bidi-font-size:13.5pt;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:black;
letter-spacing:1.0pt;mso-bidi-font-weight:bold"><span style="mso-list:Ignore">·<span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;&nbsp;&nbsp;</span></span></span><![endif]><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">Proper personal protective clothing and equipment shall be worn.<o:p></o:p></span></p>
        </li>
        <li>
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;
mso-bidi-font-size:13.5pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol;color:black;letter-spacing:1.0pt;mso-bidi-font-weight:
bold"><span style="mso-list:Ignore"><span 
            
                    style="font-style: normal; font-variant: normal; line-height: normal; font-family: 'Times New Roman';" 
                    class="style11">&nbsp;</span></span></span><![endif]><span style="font-family:
&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" class="style11">Always have an appropriate</span><span style="mso-bidi-font-size:11.0pt;font-family:&quot;Comic Sans MS&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;
color:black;letter-spacing:1.0pt" class="style11">&nbsp;</span><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:1.0pt" 
                    class="style11">Material 
        Safety Data Sheet (MSDS)</span><span style="mso-bidi-font-size:
11.0pt;font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:Arial;color:black;letter-spacing:1.0pt" class="style11">&nbsp;</span><span style="font-family:&quot;Comic Sans MS&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Shonar Bangla&quot;;color:black;letter-spacing:
1.0pt" class="style11">available and be familiar with the health, flammability and reactivity hazards 
        for the particular gas.</span><span style="font-family:&quot;Comic Sans MS&quot;" 
                    class="style11"><o:p>&nbsp;</o:p></span></p>
        </li>
    </ul>
        </form>
</body>
</html>
