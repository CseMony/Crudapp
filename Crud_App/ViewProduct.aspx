<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Crud_App.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
         <div class="panel panel-default">

               <div class="panel-heading"> All Products</div>


     <asp:repeater ID="rptrProduct" runat="server" EnableViewState="False" OnItemDataBound="rptrProduct_ItemDataBound">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        
                        <td>ProductID</td>
                        <td>ProductName</td>
                        <td>Quantity</td>
                        
                        <td>Price</td>
                        
                        
                    </tr>
                </thead>
            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <td>  <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("ProductID") %>' /> </td>
                    <td> <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>' />   </td>
                    <td> <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />  </td>
                
                    <td> <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' /> </td>
                 
                 
                    <td><label>Unit :</label>
                     <asp:TextBox ID="txtQty" runat="server" placeholder="Enter Unit"></asp:TextBox> 
                    </td>

                    <td>
                     <asp:LinkButton ID="lbcart" runat="server" CssClass="btn btn-success" href="#" OnClick="lbcart_Click">Add to cart</asp:LinkButton>
                    </td>

                 
                    
                </tr>
         </ItemTemplate>
         <FooterTemplate>
             </tbody>
              </table>
         </FooterTemplate>
     </asp:repeater>   
</div>
     </div>
</asp:Content>
