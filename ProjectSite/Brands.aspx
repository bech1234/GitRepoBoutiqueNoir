<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brands.aspx.cs" Inherits="Brands" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ItemId" DataSourceID="SqlDataSource1">
       <ItemTemplate>
         <div id="brandBox">
              <div style="margin:0px 50px;">
               <!-- Set the image by using the conditional operator. If no image path is in the 
                    database, then use standard image, else use the image path from the database 
               --> 
               <asp:Image ID="image" runat="server" ImageUrl='<%# Eval("image").ToString() == "" ? "~/images/brands/noImage.png" : Eval("image") %>' AlternateText="Room Image" CssClass="imgBrand" Height="200px" Width="200px" />
            </div>
            <div id="brandText">
               <span style="color: #000000;">
                   Name: <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                   <br />
                   Type: <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                   <br />
                   Price: <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                   <br />
                   Description: <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                   </span>
                </div>
            
            </div>
           </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="clear:both;text-align: center;">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT [ItemId], [Name], [Type], [Price],[Description], [Author], [Stock], [image]  FROM [Item] ORDER BY [name]">
     </asp:SqlDataSource>
</asp:Content>

