<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="Crud_App.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center-page">
        <div class ="form-group">
            <label class="col-xs-10">Customer ID:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPId" runat="server" Class="form-control" placeholder="Enter Product ID what you want to delete"></asp:TextBox>
            </div>

            <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txtDelete" Class="btn btn-success" runat="server" Text="Delete" OnClick="txtDelete_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </div>
        </div>
                
    </div>
</asp:Content>
