create table cliente(
id_cliente serial primary key,
nome_cliente varchar(100) not null,
cpf char(11) unique,
telefone_cliente varchar(11) null,
endereco_cliente text null
);

create table ordens(
id_ordem serial primary key,
tipo_do_problema text not null,
descricao text not null,
data_publicacao date null
);


create table aparelho(
id_aparelho serial primary key,
nome_aparelho varchar(100) not null,
tipo_dispositivo varchar(200) not null,
id_cliente int references cliente(id_cliente)
);

create table funcionario(
id_funcionario serial primary key,
nome_funcionario varchar(100),
telefone_funcionario varchar(11),
especialidade text,
endereco_funcionario text null
);



insert into cliente (nome_cliente, cpf, telefone_cliente, endereco_cliente)
values ('rafael', '12345678911', '82999438890', 'boca da mata')

insert into cliente (nome_cliente, cpf, telefone_cliente, endereco_cliente)
values ('Vitor Henrique', '11987654321', '82999880090', 'maceio')

insert into cliente (nome_cliente, cpf, telefone_cliente, endereco_cliente)
values ('carol', '87456098678', '82990634789', 'maceio')

insert into ordens (tipo_do_problema, descricao, data_publicacao)
values ('hardware', 'queimou a tela', '20241109')

insert into ordens (tipo_do_problema, descricao, data_publicacao)
values ('software', 'Travou', '20241225')

insert into ordens (tipo_do_problema, descricao, data_publicacao)
values ('hardware', 'placa de video em desgaste', '20240930')

insert into aparelho (nome_aparelho, tipo_dispositivo, id_cliente)
values('motorola g13', 'smartphone', '1')

insert into aparelho (nome_aparelho, tipo_dispositivo, id_cliente)
values ('Samsung galaxy pocket', 'smartphone', 2)

insert into aparelho (nome_aparelho, tipo_dispositivo, id_cliente)
values ('gtx 1650', 'gpu', 3)

insert into funcionario (nome_funcionario, telefone_funcionario, especialidade, endereco_funcionario)
values('ronaldo', '87999780076', 'tecnico de smartphones', 'maceio')

insert into funcionario (nome_funcionario, telefone_funcionario, especialidade, endereco_funcionario)
values ('Tacy', '82998702525', 'Tecnica em software', 'maceio')

insert into funcionario (nome_funcionario, telefone_funcionario, especialidade, endereco_funcionario)
values ('joao', '82987034512', 'tecnico de eletronicos', 'maceio')

select * from aparelho

select * from ordens

select * from cliente

select * from funcionario

select nome_aparelho, tipo_dispositivo from aparelho