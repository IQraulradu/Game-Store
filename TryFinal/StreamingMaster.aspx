<%@ Page Title="" Language="C#" MasterPageFile="~/ShopMaster.Master" AutoEventWireup="true" CodeBehind="StreamingMaster.aspx.cs" Inherits="TryFinal.StreamingMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

            .myTextBoxStyle {
              width: 50px;
              height: 20px;
            }

            .myButtonStyle {
              padding: 10px 20px;
              background-color: black;
              color: white;
              border: none;
              border-radius: 5px;
              box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
              transition: all 0.3s ease-in-out;
            }

            .myButtonStyle:hover {
              background-color: red;
              transform: translateY(-3px);
              box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.5);
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

            .myButtonStyle {
                padding: 10px 20px;
                background-color: black;
                color: white;
                border: none;
                border-radius: 5px;
            }

            .myButtonStyle:hover {
                background-color: red;
            }

            .myGridViewStyle {
                border: 1px solid black;
                background-color: #f2f2f2;
                border-collapse: collapse;
                font-family: Arial, sans-serif;
                font-size: 14px;
            }

            .myGridViewStyle th, .myGridViewStyle td {
                padding: 8px;
                border: 1px solid black;
            }

            .myGridViewStyle th {
                background-color: #333;
                color: white;
                text-align: left;
            }
           
    </style>

   

   

    <asp:GridView ID="productsGridView" runat="server" AutoGenerateColumns="false" CssClass="myGridViewStyle">
  <Columns>
    <asp:BoundField DataField="id" HeaderText="Product ID" Visible="false" />
    <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
    <asp:BoundField HeaderText="Price" DataField="Price" DataFormatString="{0:C}" />
    <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
    <asp:ImageField HeaderText="Image" DataImageUrlField="ImageUrl" ControlStyle-CssClass="myImageStyle" />
    <asp:TemplateField HeaderText="Quantity">
      <ItemTemplate>
        <asp:TextBox ID="quantityTextBox" runat="server" Text="0" CssClass="myTextBoxStyle"></asp:TextBox>
      </ItemTemplate>
    </asp:TemplateField>
  </Columns>
</asp:GridView>

<asp:Button ID="calculateButton" runat="server" Text="Calculate" OnClick="calculateButton_Click" CssClass="myButtonStyle" />
<p>Total price: <asp:Label ID="totalPriceLabel" runat="server" CssClass="myLabelStyle" /></p>
<p><asp:Label ID="errorMessageLabel" runat="server" CssClass="myLabelStyle"></asp:Label></p>

   
    
</asp:Content>
