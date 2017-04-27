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
                <asp:Label ID="itemIdLabel" runat="server" Text="Label" > Item Id:  </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemIdTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="CreateButton_Click1" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="itemNameLabel" runat="server" Text="Label" Visible="false" >Item Name:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemNameTextBox" runat="server" Visible="false"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="itemTypeLabel" runat="server" Text="Label" Visible="false"> Type:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="itemTypeTextBox" runat="server" Visible="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="descriptionLabel" runat="server" Text="Label" Visible="false">Description:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="descriptionTextBox" runat="server" Visible="false"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="AuthorLabel" runat="server" Text="Label" Visible="false">Author:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AuthorTextBox" runat="server" Visible="false"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="StockLabel" runat="server" Text="Label" Visible="false">Stock:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="StockTextBox" runat="server" Visible="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
       <td>
         <asp:Label ID="ImageLabel" runat="server" Width="110px" Text="Image of room:" Visible="false"></asp:Label>
       </td>
       <td>
         <asp:FileUpload ID="ImageFileUpload" runat="server" Visible="false"/>
       </td>
     </tr>
     <tr>
       <td colspan="2">
             <br/>
         <asp:Button ID="CreateButton" runat="server" Text="Create Item" 
        onclick="CreateButton_Click" Visible="false" />    
       </td>
     </tr>


    </table>
    <br />
    <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>
</asp:Content>






<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

