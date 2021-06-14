<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="Crud_App.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container">
         <div class="panel panel-default">

               <div class="panel-heading"> All Products</div>
             <asp:LinkButton ID="LinkButton1" runat="server" href="ViewProducts.aspx">Continue Shopping</asp:LinkButton>

     <asp:repeater ID="rptrProduct" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        
                        <td>ProductID</td>
                        <td>ProductrName</td>
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
                 <td><%# Eval("Price") %>   </td>
                 
                
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
