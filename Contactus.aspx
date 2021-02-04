<%@ OutputCache Duration="20" VaryByParam="id" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="irMarket.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="page_contact">
     <div style="text-align:center;">
     <h4>
     تماس با ما
     </h4>
     </div>
     <div class="page">
         <div class="contact">
      <h3>فرم تماس</h3>
       

             <br />
             <asp:Label ID="lblcontact" runat="server" Text="Label"></asp:Label>
             <br />


             <br />
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             <br />




      <label for="first_name">نام </label>
             <asp:TextBox ID="txtname" runat="server" Width="180" Height="25"></asp:TextBox>
      <label for="email">ايميل </label>
      <asp:TextBox ID="txtemail" runat="server" Width="180" Height="25"></asp:TextBox>
             <label for="email">موضوع </label>
      <asp:TextBox ID="txttitle" runat="server" Width="180" Height="25"></asp:TextBox>


      <label for="comments">پيغام </label>
      <asp:TextBox ID="txtmessage" runat="server" Width="400" Height="150" TextMode="MultiLine"></asp:TextBox>
             <br />
      <asp:Button ID="btnSend" runat="server" Text="ارسال" Height="30px" Width="90px" BackColor="#CC3300" Font-Size="Larger" ForeColor="White" OnClick="btnSend_Click"  />
      
    
    </div>
     </div>
     </div><!-- end contact -->
    <div class="space"></div>



</asp:Content>
