<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brands.aspx.cs" Inherits="Brands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ItemId" DataSourceID="SqlDataSource1">
       <ItemTemplate>
         <div style="background-color:#c1ceff; float:left;padding:10px;margin:0px 5px 5px 0px; border:1px solid #000077">
            <div style="float:left">
               <span style="color: #000000;">
                   Name: <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                   <br />
                   Type: <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                   <br />
                   Description: <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                   </span>
                </div>
             <div style="float:right;margin:0px 50px">
               <!-- Set the image by using the conditional operator. If no image path is in the 
                    database, then use standard image, else use the image path from the database 
               --> 
               <asp:Image ID="image" runat="server" ImageUrl='<%# Eval("image").ToString() == "" ? "~/images/brands/noImage.png" : Eval("image") %>' AlternateText="Room Image"/>
            </div>
            </div>
           </ItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT [ItemId], [Name], [Type], [Description], [Author], [Stock], [image]  FROM [Item] ORDER BY [name]">
     </asp:SqlDataSource>
</asp:Content>

