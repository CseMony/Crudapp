<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Crud_App.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class ="center-page">
            <h4>Update Product</h4>
           <label class="col-xs-11">Product ID:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPId" runat="server" Class="form-control" placeholder="Enter Product ID"></asp:TextBox>
            </div>


            <label class="col-xs-11">Product Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtProductName" runat="server" Class="form-control" placeholder="Enter Product Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Quantity:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtQty" runat="server" Class="form-control" placeholder="Enter Quantity"></asp:TextBox>
            </div>

            <label class="col-xs-11">Date:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtDate" runat="server" Class="form-control" placeholder="Enter Date"></asp:TextBox>
            </div>
         <label class="col-xs-11">Price:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPrice" runat="server" Class="form-control" placeholder="Enter Price"></asp:TextBox>
            </div>
                        
            

            <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txtUpdate" Class="btn btn-success" runat="server" Text="Update" OnClick="txtUpdate_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </div>
        </div>
</asp:Content>
