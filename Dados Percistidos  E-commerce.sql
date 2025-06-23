-- inserção de dados e queries

use ecommerce;


show tables;

-- idClient, Fname, Minit, Lname, CPF, Address

insert into Clients ( Fname, Minit, Lname, CPF, Address)
   values( 'Maria','M', 'Silva', 123456789,'carangola - Cidade das frores'),
         ( 'Rafael','N','Novais',035982295,'são lourenço - Teixeira de freitas'),
         ( 'Maurisa','R','Pereira',456217859,'vila vargas - Teixeira de freitas'),
         ('Rita de cassia','N','de Novais',456328974,'são lourenço - Teireira de freitas'),
         ('Cassia','N','de novais',125893547,'bela vista - Teixeira de freitas'),
         ('Daniel','N','de novais',421563214,'rua iglesia 124, manilva - Manilva');
         
    select * from clients; 
    select p.Fname,Lname 
  from clients
where Address = 'Teixeira de freitas'
  order by Fname ;

-- idproduct, Pname, Classinfication_kids bool, Category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), Avaliation, size

insert into product (Pname, Classinfication_kids, Category, Avaliation, size) 
   values ('Fone',false,'Eletrônico','4', null),
		  ('BarbieElsa',true,'Brinquedos','3',null),
          ('BodyCarter',true,'Vestimenta','5',null),
          ('Microfone',false,'Eletrônico','4',null),
          ('Sofa ',false,'Móveis','3','3x57x80'),
          ('Farinha',false,'Alimentos','2',null),
          ('Fire Stick',false,'Eletrônico','3',null);
          
 
-- idOrder,idOrderClient, orderStatus, orderDiscription, sendValue, idpaymentCash

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, idpaymentCash) 
   values (1,default,'compra via aplicativo',null,1),
          (2,default,'compra via aplicativo',50,0),
          (3,'confirmado',null,null,1),
          (4,default,'compra via web site',150,0);
          
          
-- idPOproduct, idPOorder, poQuantity, poStatus

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) 
    values (1,5,2,null),
	       (2,5,1,null),
           (3,6,1,null);
           
           
-- storageLocation,quantity           
insert into productstorage (storagelocation,quantity) 
					values ('Rio de janeiro',1000),
                           ('Rio de jabeiro',500),
                           ('São paulo',10),
                           ('São paulo',100),
                           ('São paulo',10),
                           ('Brasilia',60);
                           
                           
-- idLproduct, idLstorage, location

insert into storagelocation (idLproduct, idLstorage, location)
    values (1,2,'RJ'),
           (2,6,'GO');
           
           
-- idSupplier, SocialName, CNPJ, contact

insert into supplier (SocialName, CNPJ, contact)
    values ('Almeida e filhos', 123456789123456,'21985474'),
           ('Eletrônicos valma', 123456987456789,'14523678'),
           ('Eletrônica valma', 125987456325654,'45178954');
     desc supplier;
     
           
-- idPsSupplier, idPsProduct, quantity

insert into productSupplier (idPsSupplier, idPsProduct, quantity)
    values (1,1,500),
           (1,2,400),
	       (2,4,633),
           (3,3,5),
           (2,5,10);


-- idPSeller, SocialName, AbstName, CNPJ, CPF, Location, contact

  insert into  seller ( idPSeller, SocialName, AbstName, CNPJ, CPF, Location, contact)     
  values ('1','aracruz','aracruz c','123456789012345','123456789','Teixeira de freitas','99909876549'),
         ('2','JSL','Julio simoes','234567890123456','234567890','Itabatan','33345678548'),
         ('3','coelba','neoenergia','345678901234567','345678901','Brasilia','23165734234');
         
         
	-- idLproduct, idLstorage, location
    
    insert into storagelocation (idLproduct, idLstorage, location)
       values ('3','2','São Paulo'),
              ('4','5','Rio de janeiro'),
              ('6','6','Bahia');
              
              
-- idPseller, idPproduct, prodQuantity

    insert into productseller (idPseller, idPproduct, prodQuantity)
       values ('1','2','80'),
              ('2','3','60'),
              ('3','4','50');
    
          
          