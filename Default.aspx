<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="irMarket.Default1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="clear: both"></div>

    <div id="page_portfolio">
        <div style="text-align: center;">
            <h4>محصولات
            </h4>
        </div>

        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>

        <div class="porto">
            <h5><%# Eval("title") %></h5>
            <div style="text-align: center;">
                
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImage") %>' Height="200" Width="400" />

            </div>
            <p>
                <%# Eval("Description") %>
            </p>
            تاریخ انتشار:
            <span><%# Eval("Date") %></span>


           <span style="padding-right:75px"> قیمت: </span>
            <span ><%# Eval("Price") %></span>
            ریال

          <span style="padding-right:75px"> 
              
             <a href='<%# "DetailsProduct.aspx?id=" + Eval("id") %>' target="_blank">
                  <asp:Image ID="Image2" runat="server" ImageUrl='/img/pay.png' Height="25" Width="150"  /> 
                 
                 </a>



          </span>



        </div>

            </ItemTemplate>
            </asp:ListView>
        <div style="padding-right:200px">
        <asp:DataPager ID="DataPager1" PageSize="5" runat="server" PagedControlID="ListView1">
            <Fields>
                <asp:NextPreviousPagerField ShowNextPageButton="false" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ShowPreviousPageButton="false" />
            </Fields>
        </asp:DataPager>

        </div>


    </div>
    <!-- end portfolio -->
    <div class="space"></div>


    <div class="space"></div>



</asp:Content>
