<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="irMarket.Aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="page_about">
    <div style="margin-top:-30px"></div>
    <div style="text-align:center;">
    <h4>
    درباره
    </h4>
    </div>
    <div class="page">
    <div class="image">
    <img src="img/about.jpg" alt="" />
    </div>
     <h5>
     درباره ما
     </h5>
     <p>
     
         <asp:Label ID="lblabout" runat="server" Text=""></asp:Label>


     </p>
     
     </div><!-- ent about -->
     </div>
		<div class="space"></div>



</asp:Content>
