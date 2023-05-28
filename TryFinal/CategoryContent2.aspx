<%@ Page Title="" Language="C#" MasterPageFile="~/ShopMaster.Master" AutoEventWireup="true" CodeBehind="CategoryContent2.aspx.cs" Inherits="TryFinal.CategoryContent2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 44px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:DataList ID="dlCategory" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="584px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Height="153px" Width="279px" />
                    </td>
                </tr>
                <tr>
                    <td>Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Price:<asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ProductDetailsContent2.aspx?ProductID="+Eval("ProductID") %>' Text='<%# "Details" %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
