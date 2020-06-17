CREATE TABLE TipoUsuario
(
	Id bigint not null Primary Key,
	Descripcion varchar(50) not null
)
go
CREATE TABLE Usuario
(
	Id bigint not null Primary Key,
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	DNI int not null,
	FechaNac datetime null,
	Telefono int not null,
	Mail varchar(100) null,
	Estado bit not null,
	IDTipo bigint Foreign Key references TipoUsuario (Id)
)
go
CREATE TABLE Venta
(
	Id bigint not null Primary Key,
	FechaVenta datetime not null,
	FechaEntrega datetime not null,
	Total float not null,
	FormaPago varchar(50),
	IDUsuario bigint not null Foreign Key references Usuario(Id)
)
go
CREATE TABLE Producto
(
	Id bigint not null Primary Key,
	Cantidad int not null,
	PrecioCompra float not null,
	PrecioVenta float not null,
	Descripcion varchar (100) not null,
	Nombre varchar(50) not null,
	Estado bit not null
)
go
CREATE TABLE Marca
(
	Id bigint not null Primary Key,
	Nombre varchar(100) not null,
	Estado bit not null,
	IDProducto bigint not null Foreign Key references Producto(Id)
)
go
CREATE TABLE Productos_X_Venta
(
	IDProducto bigint not null Foreign Key references Producto(Id),
	IDVenta bigint not null Foreign Key references Venta(Id),
	Primary Key(IDProducto,IDVenta)
)

go
CREATE TABLE Proveedor
(
	Id bigint not null Primary Key,
	Cantidad int not null,
	CUIT int not null,
	Telefono int not null,
	Mail varchar(100) not null,
	Estado bit not null
)
go
CREATE TABLE Compra
(
	Id bigint not null Primary Key,
	FechaCompra datetime not null,
	FechaEntrega datetime not null,
	Total float not null,
	FormaPago varchar(50),
	IDProveedor bigint not null Foreign Key references Proveedor(Id)
)
go
CREATE TABLE Productos_X_Compra
(
	IDProducto bigint not null Foreign Key references Producto(Id),
	IDCompra bigint not null Foreign Key references Compra(Id),
	Primary Key(IDCompra,IDProducto)
)
go
CREATE TABLE Direccion
(
	Id bigint not null Primary Key,
	Calle varchar(50) not null,
	Numero int not null,
	Piso int null,
	Departamento varchar(10) null,
)
go
CREATE TABLE Usuario_X_Direccion
(
	IDDireccion bigint not null Foreign Key references Direccion(Id),
	IDUsuario bigint not null Foreign Key references Usuario(Id),
	Primary Key(IDDireccion,IDUsuario)
)
go
CREATE TABLE Proveedor_X_Direccion
(
	IDDireccion bigint not null Foreign Key references Direccion(Id),
	IDProveedor bigint not null Foreign Key references Proveedor(Id),
	Primary Key(IDDireccion,IDProveedor)
)
go