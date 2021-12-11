create database FACTURAS_MYD_CONSULTORES;
use FACTURAS_MYD_CONSULTORES;

create table Usuarios (
	IdUsuario int (10) primary key auto_increment,
    TipoUsuario varchar (15) not null,
    DocumentoUsuario Int (10) not null,
    NomUsuario varchar (30) not null,
    ApellidosUsuario varchar (30) not null,
    TelefonoUsuario varchar (30) not null,
    EmailUsuario varchar (50) not null,
    ContraseñaUsuario varchar (8) not null,
    RolUsuario varchar (15) not null
    );
    
create table Rol(
	IdRol int (15) primary key auto_increment,
    IdUsuario int (10),
    NomRol varchar (15) not null,
    DescripcionRol varchar (15) not null,
    Estado varchar (10) not null
    );
    
create table UsuarioRol (
	IdRol int (15),
    IdUsuario int (10),
    
    constraint fk_UsuarioRol
    foreign key (IdUsuario)
    references Usuarios (IdUsuario),
    
    constraint fk_RolUsuario
    foreign key (IdRol)
    References Rol (IdRol)
    
    );
    

    
create table Clientes (
	IdCliente int (15) primary key auto_increment,
    IdUsuario int (10),
    RazonSocial varchar (50) not null,
    ContactoCliente varchar (30) not null,
    EmailCliente varchar (50) not null,
    TelefonoCliente varchar (30) not null,
    EstadoCliente varchar (10) not null
    );
    
    create table UsuariosCliente (
    IdUsuariosClientes int (15) primary key,
    IdCliente int (15),
    IdUsuario int (10),
   
    
	constraint fk_UsuarioCliente
	foreign key (IdCliente)
	references Clientes (IdCliente),

	constraint fk_ClienteUsuario
	foreign key (IdUsuario)
	references Usuarios (IdUsuario)
    
    );
    
    
create table Contratos (
	IdContrato int (20) primary key auto_increment,
	IdCliente int (15) not null,
    ObjetoContrato varchar (200) not null,
    FechaInicio date,
    FechaFin date,
    PlazoContrato int (2),
    ValorContrato decimal (20,2) not null,
    
    constraint fk_ClienteContrato
    foreign key (IdCliente)
    references Clientes (IdCliente)
        );
    
    create table Facturas (
		IdFactura int (10) primary key auto_increment,
        IdCliente int (15),
        fechaFactura date,
        NomCliente varchar (50) not null,
        Direccion varchar (50) not null,
        Telefono int (10) not null,
        DirWeb varchar (30) not null,
        CodServicio int (8) not null,
        DescripcionServicio varchar (50) not null,
        PrecioUnidad decimal (10,2) not null,
        Cantidad decimal (3,2) not null,
        Descuentos decimal (3,2) not null,
        TotalFactura decimal (10,2) not null,
        Iva decimal (2,1) not null,
        OtrosDescuentos decimal (10,2) not null,
        NetoFactura decimal (10,2) not null,
        
        constraint fk_FacturasClientes
        foreign key (IdCliente)
		references Clientes (IdCliente)
        );
        
        
        
        
        
        
    
    
    
    
    
	
    
    
    
    
    

