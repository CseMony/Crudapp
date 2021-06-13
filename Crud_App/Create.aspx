<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Crud_App.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
        <div class ="center-page">
            <h4>Create New Customer</h4>
            <label class="col-xs-11">Customer Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCName" runat="server" Class="form-control" placeholder="Enter Customer Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Address:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtAddress" runat="server" Class="form-control" placeholder="Enter Address"></asp:TextBox>
            </div>

            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Email"></asp:TextBox>
            </div>
                        
            <label class="col-xs-11">Phone No:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPhone" runat="server" Class="form-control" placeholder="Enter Phone Number"></asp:TextBox>
            </div>

            <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="Create" OnClick="txtsignup_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </div>
        </div>
         <!---signup page end--->


</asp:Content>
