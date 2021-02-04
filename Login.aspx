<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="irMarket.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="page_contact">
     <div style="text-align:center;">
     <h4>
     ورود
     </h4>
     </div>
     <div class="page">
         <div class="contact">
      <h3>فرم ورود</h3>
       
      <label for="first_name">شناسه </label>
      
             <asp:TextBox ID="txtUser" runat="server" maxlength="50" size="25"></asp:TextBox>

      <label for="email">رمز </label>

             <asp:TextBox ID="txtPass" runat="server" maxlength="80" size="25" TextMode="Password"></asp:TextBox>
     
      
     
             <asp:Button CssClass="btn" ID="btnLogin" runat="server" Text="ورود" BackColor="#900000" ForeColor="White" OnClick="btnLogin_Click" />
    
    </div>
     </div>
     </div><!-- end contact -->
    <div class="space"></div>


</asp:Content>
