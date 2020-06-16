CREATE TABLE Compra
(
	Id bigint not null Primary Key,
	FechaCompra datetime not null,
	FechaEntrega datetime not null,
	Total float not null,
	FormaPago varchar(50)
)
go
CREATE TABLE Compra_X_Usuario 
(
	IDCompra bigint not null Foreign Key references Compra(Id),
	IDUsuario bigint not null Foreign Key references Usuario(Id)
)
go
CREATE TABLE Venta
(
	Id bigint not null Primary Key,
	FechaVenta datetime not null,
	FechaEntrega datetime not null,
	Total float not null,
	FormaPago varchar(50)
)
go
CREATE TABLE Ventas_X_Usuario 
(
	IDVenta bigint not null Foreign Key references Compra(Id),
	IDUsuario bigint not null Foreign Key references Usuario(Id)
)