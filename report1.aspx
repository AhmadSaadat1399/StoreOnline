<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report1.aspx.cs" Inherits="irMarket.report1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" colspan="3">گزارش خرید ها</td>
            </tr>
            <tr>
                <td class="auto-style1">کد پستی:<asp:Label ID="lblcode" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="auto-style1">تلفن تماس:<asp:Label ID="lbltell" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="auto-style1">نام خریدار:<asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style2">خریدها</td>
            </tr>

            <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>

            <tr>
                <td class="auto-style1">نام محصول:

                    <%# Eval("name") %>

                    </td>
                <td class="auto-style1">قیمت:

                    <%# Eval("price") %>
                    </td>
               
            </tr>

                </ItemTemplate>
            </asp:ListView>

        </table>

        <asp:Button ID="Button1" runat="server" Text="چاپ" OnClientClick="javascript:window.print();" />
    
    </div>
    </form>
</body>
</html>
