<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DetailsProduct.aspx.cs" Inherits="irMarket.DetailsProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="dp" runat="server">

    <div style="clear: both"></div>

    <div id="page_portfolio">
        <div style="text-align: center;">
            <h4>محصول
            </h4>
        </div>

        

        <div class="porto">
            <h5>
                
                <asp:Label ID="lblname" runat="server" Text=""></asp:Label>

            </h5>


            <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>

            <div style="text-align: center;">
                
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImage") %>' Height="200" Width="400" />

            </div>
            <p>
                <%# Eval("Description") %>
            </p>
            تاریخ انتشار:
            <span><%# Eval("Date") %></span>

                </ItemTemplate>
            </asp:ListView>

           <span style="padding-right:75px"> قیمت: </span>
            <span >
                
                

                <asp:Label ID="lblprice" runat="server" Text=""></asp:Label>
            </span>
            ریال

          <asp:Button ID="btnaddbasket" runat="server" Text="افزودن به سبد" OnClick="btnaddbasket_Click" />
            <asp:Button ID="btnbasket" runat="server" Text="مشاهده سبد خرید" OnClick="btnbasket_Click" />



        </div>

            
        


    </div>
            </asp:View>
    

        <asp:View ID="vbasket" runat="server">


            <div style="clear: both"></div>

    
        <div style="text-align: center;">
            <h4>سبد خرید
            </h4>
        </div>

            <table id="basket" style="width:100%">

                <tr>
                    <th>
                        نام محصول

                    </th>
                    <th>
                        قیمت

                    </th>

                    <th style="padding:0">


                    </th>


                </tr>


                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>

                    <td>
                        <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>

                    <td>

                        <asp:Button ID="btndel" runat="server" Text="حذف" CommandArgument='<%# Eval("id") %>' />
                    </td>


                </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </table>

            <br /><br />
            <asp:Label ID="lblpricef" runat="server" Text="Label"></asp:Label>
            <br /><br />

            <table style="width:100%;text-align:center">
                <tr>
                    <td>

                        نام و نام خانوادگی:

                    </td>

                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>


                    </td>


                </tr>


                <tr>
                    <td>

                        ایمیل:

                    </td>

                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>


                    </td>


                </tr>


                <tr>
                    <td>

                        تلفن تماس:

                    </td>

                    <td>
                        <asp:TextBox ID="txttell" runat="server"></asp:TextBox>


                    </td>


                </tr>

                <tr>
                    <td>

                        کد پستی:

                    </td>

                    <td>
                        <asp:TextBox ID="txtpostcode" runat="server"></asp:TextBox>


                    </td>


                </tr>


                <tr>
                    <td>

                        آدرس:

                    </td>

                    <td>
                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>


                    </td>


                </tr>

                
                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td>

                        <asp:Button ID="btnpay" runat="server" Text="پرداخت" OnClick="btnpay_Click" />
                    </td>


                </tr>





            </table>
    
            


        </asp:View>

    

    </asp:MultiView>

</asp:Content>
