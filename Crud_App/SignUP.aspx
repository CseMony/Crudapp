<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUP.aspx.cs" Inherits="Crud_App.SignUP" %>

<!DOCTYPE html>


<html lang="en">
<head runat="server">
    <title></title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <link href="css/custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $(".menu").click(function () {
                var callItem = $(this);
                callItem.addClass('active');
                $(".menu").not(callItem).removeClass('active');
            });
        });
    </script>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
  
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
  
  <ul class="nav nav-pills">
    <li class="nav-item navbar-right">
      <a class="nav-link " href="#">Home</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle"  data-toggle="dropdown" href="#">Customers</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Create.aspx">Create</a>
          <a class="dropdown-item" href="Read.aspx">Read</a>
      
        <a class="dropdown-item" href="Delete.aspx">Delete</a></div>
    </li>
       <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Products</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="CreateProducts.aspx">Create</a>
          <a class="dropdown-item" href="ProductRead.aspx">Read</a>

        <a class="dropdown-item" href="DeleteProduct.aspx">Delete</a>

        <a class="dropdown-item" href="ViewProduct.aspx">View Products</a>
      </div>

    </li>
       <li class="nav-item">
      <a  href="OrderDetails.aspx">Order Details</a>
    </li>
     <li class ="active"><a href ="SignUp.aspx">SignUp</a> </li>
                        <li ><a href ="SignIn.aspx">SignIn</a> </li>
    
  </ul>
</div>
        </div>
    </form>
</body>
</html>
