<%@ Page Title="" Language="C#" MasterPageFile="~/ShopMaster.Master" AutoEventWireup="true" CodeBehind="ProductDetailsContent2.aspx.cs" Inherits="TryFinal.ProductDetailsContent2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 155px;
            height: 50px;
        }
        .auto-style5 {
            margin-right: auto;
        }
        .add-to-cart-button {
        display: inline-block;
        padding: 8px 20px;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        color: #fff;
        background-color: #000000;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
        .add-to-cart-button:hover {
        background-color: #ff0000;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="dlProduct1" runat="server" CssClass="auto-style5" RepeatColumns="1">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" Height="177px" ImageUrl='<%# Eval("ImageUrl") %>' Width="256px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Name:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Price:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Description:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAddToCart" runat="server" CssClass="add-to-cart-button" Text="Add to Cart" OnClick="btnAddToCart_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
