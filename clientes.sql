create table cliente (
id serial primary key,
nome text not null,
rua text,
bairro text,
cidade text,
uf varchar(2)
)

insert into cliente (nome, rua, bairro, cidade, uf)
values ('sam  smith', 'dos anjos', 'pajucara', 'maceio', 'al'),
('vitor', 'rua 6', 'benedito', 'maceio', 'al'),
('davi', 'rua aberta', 'ponta verde', 'maceio', 'al'),
('vinicius', 'rua antonio lourenco', 'serraria', 'maceio', 'al'),
('joao', 'amelia rosa', 'jatiuca', 'maceio', 'al')
