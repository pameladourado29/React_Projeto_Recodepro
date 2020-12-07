-- CRIANDO NOVO SCHEMA(BANCO DE DADOS)
create database fseletro 

-- CHAMANDO O DB PARA USAR
   use fseletro  

   create table produtos(  -- TABELA PRODUTOS CRIADA
   idproduto int auto_increment primary key,
   categoria varchar(100),
   imagem varchar(100),
   descricao varchar(500),
   preco float,
   preco_venda float
   );
   
    
    insert into produtos (categoria,imagem,descricao,preco,preco_venda) -- INSERINDO OS ELEMENTOS DE MINHA TABELA
    /* categoria geladerira*/
    values ("geladeira" ,"Image/geladeira4.jpeg","Geladeira Frost Free Brastemp Side Inverse 540 litros",6839.00, 5019.00),
   	("geladeira" ,"Image/geladeira3.jpeg","Geladeira Frost Free Brastemp branca 375 litros",2068.60, 1910.90),
    ("geladeira" ,"Image/geladeira2.png","Geladeira Frost Free Brastemp Consul prata 340 litros",2169.00, 2069.00),
    /* categoria fogao*/
    ("fogao" ,"Image/fogao2.jpeg","Fogão 4 Bocas Consul Inox com Mesa de Vidro",1200.00, 1129.00),
    ("fogao" ,"Image/fogao1.jpeg","Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático",600.00, 519.70),
    /* categoria microondas*/
    ("mircoondas" ,"Image/microondas3.jpeg","Micro-ondas Consul 32 litros inox 220V",580.00, 409.88),
    ("microondas" ,"Image/microondas2.jpeg","Micro-ondas 25L espelhado Philco 220V",508.70, 463.53),
    ("microondas" ,"Image/microondas1.jpeg","Forno de Micro-ondas Eletrolux 20L branco",459.00, 436.05),
    /*categoria lava-louça*/
    ("lavalouca" ,"Image/filtro.jpeg","Lava-louça Eletrolux Inox com 10 serviços,06 programas de lavagem,e painel Blue Touch",3500.00, 2799.00),
    /*categoria lavadoura*/
    ("lavadoura" ,"Image/lavadora3.jpeg","Lavadoura de roupas Philco Inverter 12kg",2399.00, 2179.90),
    ("lavadoura" ,"Image/maquinadelavar2.jpeg","Lavadoura de roupas Brastemp 11kg com turbo performance Branca",1699.00, 1214.10),
    ("lavadoura" ,"Image/maquinadelavar1.jpeg","Lavadoura de roupas Philco Inverter 12kg",2399.00, 2179.90);
    

    create table `comentarios`(
id int auto_increment,
nome varchar(100),
msg varchar(300),
data datetime default now(),
primary key (id)
);


create table clientes (
    idUsuarios int PRIMARY KEY AUTO_INCREMENT,
    idprodutos INT NOT NULL,
    nome VARCHAR(25)NOT NULL,
    sobrenome VARCHAR(25) NOT NULL,
    cpf VARCHAR(25) NOT NULL,
    cep BIGINT(50) NOT NULL;
    telefone BIGINT(50),
    email VARCHAR(50) NOT NULL,
    FOREIGN KEY (idProdutos) REFERENCES produtos(idproduto)

);

ALTER TABLE clientes
	ADD COLUMN cep BIGINT(50) AFTER cpf;  

    ALTER TABLE clientes
	MODIFY COLUMN cep BIGINT(50) NOT NULL; 




INSERT INTO clientes(idprodutos,nome,sobrenome,cpf,telefone,email)
 VALUES (10,"Pamela","Dourado","676351535",119901438321,"-pamsdourado@gmail.com");

 INSERT INTO clientes(idprodutos,nome,sobrenome,cpf,telefone,email)
 VALUES (3,"Kaique","Ramos","6729882432",119682953,"kaique72@gmail.com");

 INSERT INTO clientes(idprodutos,nome,sobrenome,cpf,telefone,email)
 VALUES (10,"Julia","novaes","663298342",11977543232,"julinha@outlook.com");

INSERT INTO clientes(idprodutos,nome,sobrenome,cpf,telefone,email)
 VALUES (12,"Yuuri","tamachio","490265624",1196472408,"Yuuriff@gmail.com");

INSERT INTO clientes(idprodutos,nome,sobrenome,cpf,telefone,email)
 VALUES (5,"Lays","Lumma","674653512",1196735271,"Lumma@gmail.com");

truncate table clientes;

 SELECT * FROM clientes;

 
 SELECT p.categoria AS Categoria, p.imagem AS imagem, p.preco_venda as Total, u.nome as Nome, u.sobrenome as Sobrenome ,  u.email as Email
 FROM produtos AS p
 JOIN clientes AS u
 ON p.idproduto = u.idprodutos;

SELECT p.categoria , p.imagem ,
         p.preco_venda , u.nome ,
          u.sobrenome ,  u.email 
        FROM produtos AS p
        JOIN clientes AS u
        ON p.idproduto = u.idprodutos;


