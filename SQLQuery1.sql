create table tblCustomer
(
CustomerID int identity(1,1) Primary key not null,
CustomerName nvarchar(100) null,
Address nvarchar(100) null,
Email nvarchar(100) null,
Phone nvarchar(100) null,
)
select * from tblCustomer

Create procedure PRO_UpdateData
  @CustomerID int,
  @CustomerName nvarchar(50),
  @Address nvarchar(50),
  @Email nvarchar(50),
  @Phone nvarchar(50)

  AS 
  Begin
  Update tblCustomer set CustomerName=@CustomerName,Address=@Address,Email=@Email,Phone=@Phone where CustomerID=@CustomerID
  End
  

 create table tblProducts
(
ProductID int identity(1,1) Primary key not null,
ProductName nvarchar(100) null,

Quantity nvarchar(100) null,
Date date null,
Price DECIMAL(10,2)

)
select * from tblProducts


 create table tblCart
(
CartID int IDENTITY(1,1) NOT NULL,
ProductID int null,
ProductName nvarchar(100) null,
Quantity nvarchar(100) null,
Price DECIMAL(10,2)

)
select * from tblCart