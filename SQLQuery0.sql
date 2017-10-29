USE xk
go

Create Table product_
(
  PoNo varchar(5) NOT NULL PRIMARY KEY,
  PoName varchar(20) NOT NULL,
  Price decimal(8,2) NOT NULL,
  Stocokts decimal(8,0) NOT NULL
  
)

