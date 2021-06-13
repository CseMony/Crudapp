 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="Crud_App.Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
         <div class="panel panel-default">

               <div class="panel-heading"> All Customers</div>


     <asp:repeater ID="rptrCustomer" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        
                        <td>CustomerID</td>
                        <td>CustomerName</td>
                        <td>Address</td>
                        <td>Email</td>
                        <td>Phone No</td>
                        <td>Update Information</td>
                    </tr>
                </thead>
            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <td> <%# Eval("CustomerID") %> </td>
                    <td><%# Eval("CustomerName") %>   </td>
                 <td><%# Eval("Address") %>   </td>
                 <td><%# Eval("Email") %>   </td>
                 <td><%# Eval("Phone") %>   </td>
                 <td>
                     <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" href="Update.aspx">Update</asp:LinkButton>
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
