<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="irMarket.report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page_about">
    <div style="margin-top:-30px"></div>
    <div style="text-align:center;">
    <h4>
    گزارشات
    </h4>
    </div>
    <div class="page">
    
     <h5>
     گزارش
     </h5>
     <p>
     
         <asp:Label ID="Label1" runat="server" Text="خریدار:"></asp:Label>
         <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="نمایش" OnClick="Button1_Click" />



     </p>
     
     </div><!-- ent about -->
     </div>
		<div class="space"></div>



</asp:Content>
