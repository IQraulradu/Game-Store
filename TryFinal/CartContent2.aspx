<%@ Page Title="" Language="C#" MasterPageFile="~/ShopMaster.Master" AutoEventWireup="true" CodeBehind="CartContent2.aspx.cs" Inherits="TryFinal.CartContent2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <style type="text/css">
          .myImageStyle {
              width: 170px;
              height: 170px;
              border-radius: 3px;
              border: 1px solid black;
              transition: all 0.3s ease-in-out;
              box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            }

          .myImageStyle:hover {
              transform: scale(1.1);
              box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
          }
           .myImageStyle {
                width: 170px;
                height: 170px;
                border-radius: 3px;
                border: 1px solid black;
           }

           .myTextBoxStyle {
                width: 50px;
                height: 20px;
           }
           .sendDBbtn {
                display: inline-block;
                padding: 8px 20px;
                font-size: 16px;
                font-weight: bold;
                text-align: center;
                text-decoration: none;
                color: #fff;
                background-color: black;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .sendDBbtn:hover {
                background-color: #ff0000;
            }

    </style>
    <asp:GridView ID="gvShoppingCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="ImageUrl" ControlStyle-CssClass="myImageStyle" HeaderText="Image" ReadOnly="True">
            </asp:ImageField>
                <asp:BoundField HeaderText="Price" DataField="Price" DataFormatString="{0:C}" ReadOnly="True" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("Price").ToString())*Int32.Parse(Eval("Quantity").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblGrandTotal" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lblCommand" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Send your order" CssClass="sendDBbtn" OnClick="btnSave_Click"/>
                 

</asp:Content>
