<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterItems.aspx.cs" Inherits="Admin_RegisterItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span class="headingspan">Create a new Item:</span>
    <br />
    <br />
    <table>
        <tr>
            <td>
                <asp:Label ID="itemIdLabel" runat="server" Text="Label"> Item Id:  </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemIdTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="itemNameLabel" runat="server" Text="Label">Item Name:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="itemTypeLabel" runat="server" Text="Label">Type:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemTypeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="descriptionLabel" runat="server" Text="Label">Description:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="descriptionTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="AuthorLabel" runat="server" Text="Label">Author:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AuthorTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="StockLabel" runat="server" Text="Label">Stock:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="StockTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
       <td>
         <asp:Label ID="ImageLabel" runat="server" Width="110px" Text="Image of room:"></asp:Label>
       </td>
       <td>
         <asp:FileUpload ID="ImageFileUpload" runat="server" />
       </td>
     </tr>
     <tr>
       <td colspan="2">
             <br/>
         <asp:Button ID="CreateButton" runat="server" Text="Create Item" 
        onclick="CreateButton_Click" />    
       </td>
     </tr>


    </table>
    <br />
    <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>
</asp:Content>






<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

