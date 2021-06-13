<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Crud_App.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
         <div class="panel panel-default">

               <div class="panel-heading"> All Products</div>


     <asp:repeater ID="rptrProduct" runat="server">

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
                    <td> <%# Eval("ProductID") %> </td>
                    <td><%# Eval("ProductName") %>   </td>
                 <td><%# Eval("Quantity") %>   </td>
                 <td><%# Eval("Date") %>   </td>
                 <td><%# Eval("Price") %>   </td>
                 
                 <td>
                     <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" href="UpdateProduct.aspx">Update</asp:LinkButton>
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
