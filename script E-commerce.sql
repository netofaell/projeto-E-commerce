-- Criação de um banco de dados para o cenário E-commerce

create database ecommerce;
use ecommerce;

-- criar tabela cliente


create table clients(
idClient int auto_increment primary key,
Fname varchar(20),
Minit char (3),
Lname varchar (20),
CPF char(11) not null,
Address varchar (255),
constraint unique_cpf_client unique (CPF));

alter table clients auto_increment=1;


-- criar tabela produto
-- size = dimensoes do produto

create table product(
idProduct int auto_increment primary key,
Pname varchar(10) not null,
Classinfication_Kids bool default false,
Avaliation float default 0,
size varchar (10),
Category enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null
);
alter table clients auto_increment=1;


  -- criar tabela payments
-- para ser continuado no desafio: termine de implementar a tabela e crie conexoes com as tabelas necessárias .
-- além disso reflita essa modificação nodiagrama de esquema relacional.
-- criar constrints relacionadas ao pagamento .

create table payments(
idClient int primary key,
idPaymaent int,
typePayment enum('Dinheiro','Boleto','Dois cartões'),
limitAvaliable float,
primary key(idClient,id_payment)
);

    -- Ou outra coluna de comparação
-- criar tabela pedido

ALTER TABLE orders DROP CONSTRAINT FK_orders_client;

create table orders(
idOrder int auto_increment primary key,
idOrderClient int,
orderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
OrderDescription varchar (255),
sendValue float default 10,
idpaymentCash bool default false,
constraint FK_orders_client foreign key (idOrderClient) references clients(idOrderClient));

alter table clients auto_increment=1;


-- criar tabela estoque

create table productStorage(
idProdStorage int auto_increment primary key,
storageLocation varchar (255),
quantity int default 0
);

alter table clients auto_increment=1;

-- criar tabela Fornecedor

create table supplier(
idPSupplier int auto_increment primary key,
socialName varchar (255) not null,
CNPJ char(15) not null,
contact varchar (11) not null ,
constraint unique_supplier unique (CNPJ)
);
alter table clients auto_increment=1;

-- criar a tabela vendedor 

create table seller(
idPSeller int auto_increment primary key,
socialName varchar (255) not null,
AbstName varchar (255),
CNPJ char(15),
CPF char (9),
location varchar (255),
contact varchar (11) not null ,
constraint unique_cnpj_seller unique (CNPJ),
constraint unique_cpf_seller unique (CPF)
);

alter table clients auto_increment=1;

create table productSeller(
idPseller int,
idPproduct int,
prodQuantity int default 1,
primary key (idPseller, idPproduct), 
constraint Fk_product_seller foreign key (idPseller) references seller(idPSeller),
constraint FK_product_product foreign key (idPproduct) references product(idProduct)
);


create table productOrder(
idPOproduct int ,
idPOorder int,
poQuantity int default 1,
poStatus enum('Disponivel','Sem estoque') default 'Disponivel',
primary key (idPOproduct, idPOorder), 
constraint Fk_productorder_seller foreign key (idPOproduct) references product(idproduct),
constraint FK_productorder_product foreign key (idPOorder) references orders(idOrder)
);
desc productSupplier;

create table storageLocation(
idLproduct int ,
idLstorage int,
location varchar (255) not null,
primary key (idLproduct, idLstorage), 
constraint Fk_storage_location_product foreign key (idLproduct) references product(idProduct),
constraint FK_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)
);
desc productSupplier;

create table productSupplier(
idPsSupplier int,
idPsProduct int,
quantity int not null,
primary key (idPsSupplier, idPsProduct),
constraint FK_product_supplier_supplier foreign key (idPsSupplier) references supplier(idPSupplier),
constraint Fk_product_supplier_product foreign key (idPsProduct) references product (idProduct)
);


desc productSupplier;
