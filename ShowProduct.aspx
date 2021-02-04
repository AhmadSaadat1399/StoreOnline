<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="irMarket.ShowProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">


         #basket th {
    background-color: highlight;
    color: white;
    font-weight: bold;
    padding: 2px 20px;
}
#basket td {
    background-color: #C2E2ED;
    padding: 2px 20px;
}


    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;width:200px;height:200px;direction:rtl">
    

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


                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>

                    <td>
                        <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>



                </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </table>


        <a href="#" onclick="window.close(); return false;" >بازگشت</a>







    </div>
    </form>
</body>
</html>
