<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenuControl.ascx.cs" Inherits="TryFinal.LeftMenuControl" %>
<asp:DataList ID="dlMenu" runat="server" Width="250px">
    <ItemTemplate>
        <style type="text/css"> 
            .myDataList {
        display: block;
        position: relative;
        margin-bottom: 30px;
        text-decoration: none;
    }

    .myDataList:before {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: linear-gradient(to bottom, rgba(0,0,0,0.3), rgba(0,0,0,0));
        opacity: 0;
        transition: all 0.2s ease-in-out;
    }

    .myDataList:hover:before {
        opacity: 1;
        transition: all 0.2s ease-in-out;
    }

    .myDataList img {
        display: block;
        max-width: 100%;
        height: auto;
        border-radius: 5px;
        margin-bottom: 10px;
        box-shadow: 0 0 5px rgba(0,0,0,0.3);
        transition: all 0.2s ease-in-out;
    }

    .myDataList:hover img {
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
        transition: all 0.2s ease-in-out;
    }

    .myDataList h2 {
        font-size: 20px;
        color: #333;
        margin: 0;
        padding: 0;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-weight: bold;
    }

    .myDataList p {
        font-size: 16px;
        color: #999;
        margin: 10px 0;
        padding: 0;
    }

    .myDataList .btn {
        display: inline-block;
        padding: 10px 20px;
        border: 1px solid #333;
        border-radius: 5px;
        color: #fff;
        text-transform: uppercase;
        font-size: 14px;
        letter-spacing: 2px;
        background-color: #333;
        transition: all 0.2s ease-in-out;
    }

    .myDataList .btn:hover {
        background-color: #fff;
        color: #333;
        transition: all 0.2s ease-in-out;
    }
</style>
        

        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="myDataList" NavigateUrl='<%# "CategoryContent2.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

