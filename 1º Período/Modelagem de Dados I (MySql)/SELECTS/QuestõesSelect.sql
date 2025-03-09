##BDEX_1
# 1 - Exibir todas as informações da tabela PACIENTES.
select * from pacientes;

# 2 - Mostrar os nomes e e-mails dos pacientes que nasceram depois do ano 2000.
select nome as Pacientes, Email from pacientes where year(data_nasc) >= 2000;

# 3 - Listar os nomes dos médicos e as especialidades em que trabalham.
select m.nome as Médicos, d.nome_especialidade as Especialidade from medicos as m
join departamentos as d on m.DEPTO_COD_ESPEC = d.COD_ESPECIALIDADE;

# 4 - Exibir os detalhes das consultas: ID da consulta, data, hora, nome do médico e nome do paciente.
select c.Id_Consulta, c.Data_Cons, c.Hora_Cons, m.Nome as Médicos, p.nome as Pacientes, c.Anamnese from consultas as c
join pacientes as p on p.CPF_PACIENTE = c.CPF_PACIENTE
join medicos as m on m.crm = c.crm and m.uf = c.uf;

# 5 - Listar o nome dos pacientes e quantas consultas cada um fez.
select p.nome as Pacientes, count(c.cpf_paciente) as Qtd_Consultas from pacientes as p 
join consultas as c on p.CPF_PACIENTE = c.CPF_PACIENTE group by Pacientes;

# 6 - Mostrar as especialidades de médicos que fizeram consultas em 2023.
select m.Nome as Médicos, d.nome_especialidade as Especialidade, c.Data_Cons, c.Hora_Cons from medicos as m
join departamentos as d on d.cod_especialidade = m.depto_cod_espec
join consultas as c on m.crm = c.crm and m.uf = c.uf where year(data_cons) = 2023;

# 7 - Listar todos os departamentos, ordenados pelo nome da especialidade de A a Z.
select * from departamentos order by nome_especialidade asc;

# 8 - Mostrar os nomes e e-mails dos médicos que não têm telefone cadastrado.
select m.nome as Médicos, m.Email from medicos as m where telefone is null;

# 9 - Exibir os nomes dos pacientes que têm consultas com médicos do departamento de Cardiologia.
select p.nome as Pacientes, m.nome as Médicos, d.nome_especialidade as Especialidade from pacientes as p
join consultas as c on p.cpf_paciente = c.cpf_paciente
join medicos as m on c.crm = m.crm and c.uf = m.uf
join departamentos as d on d.cod_especialidade = m.depto_cod_espec where nome_especialidade like "Cardiologia";

# 10 - Para cada especialidade, mostrar o nome da especialidade e a média de consultas realizadas pelos médicos dessa especialidade.
select d.Nome_Especialidade as Especialidade, m.nome as Médicos, avg(id_consulta) from departamentos as d 
join medicos as m on d.cod_especialidade = m.depto_cod_espec
join consultas as c on c.crm = m.crm and c.uf = m.uf 
group by m.depto_cod_espec;
## TA ERRADO,CORREÇÃO **demonstrar mais sobre consultas sobre consulta**

# 11 - Contar quantos pacientes têm um telefone cadastrado.
select count(cpf_paciente) as Qtd_Pacientes from pacientes where telefone is not null;

# 12 - Listar os nomes dos médicos que fizeram mais de 10 consultas.
select m.nome as Médicos, count(c.anamnese) as Qtd_Consultas from medicos as m 
join consultas as c on m.crm = c.crm and m.uf = c.uf
group by m.nome having count(c.anamnese) > 10;
## PQ O "GROUP BY M.CRM" NÃO FUNCIONA?

# 13 - Mostrar o nome dos pacientes e a data da última consulta que eles fizeram.
select p.nome as Pacientes, max(c.data_cons) as Última_Consulta from pacientes as p
join consultas as c on c.cpf_paciente = p.cpf_paciente
group by p.nome;

# 14 - Contar quantas consultas cada médico realizou.
select m.nome as Médicos, count(c.id_consulta) as Qtd_Consultas from medicos as m
join consultas as c on m.crm = c.crm and m.uf = c.uf
group by m.nome;

# 15 - Para cada paciente que fez uma consulta, mostrar o CPF, o nome e a porcentagem de consultas em relação ao total de consultas feitas por todos os pacientes.
#Não compreendi


##BDEX_2
# 1 - Exibir todas as informações da tabela PASSAGEIROS.
select *from passageiros;

# 2 - Mostrar os nomes e sobrenomes dos passageiros que nasceram depois do ano 1990.
select nome, sobrenome from passageiros where year(data_nasc) > 1990;

# 3 - Listar os nomes dos aeroportos e as cidades onde estão localizados.
select nome as Aeroportos, Cidade from aeroportos order by Aeroportos;

# 4 - Exibir os detalhes das reservas: ID da reserva, data da reserva, forma de pagamento e valor da reserva.
select * from reservas;

# 5 - Listar o nome das companhias aéreas e quantas aeronaves cada uma possui.
select c.Nome_Fantasia, count(a.cia_aerea) as Qtd_Aeronaves from cia_aereas as c
join aeronaves as a on c.id_cia = a.cia_aerea group by c.NOME_FANTASIA;

# 6 - Mostrar os nomes dos passageiros que fizeram reservas em 2023.
select p.Nome, p.Sobrenome from passageiros as p
join passageiros_reservas as pr on p.cod_passageiro = pr.passageiro
join reservas as r on pr.id_reserva = r.id_reserva
where year(r.data_reserva) = 2023;

# 7 - Listar todas as companhias aéreas, ordenadas pelo nome fantasia de A a Z.
select * from cia_aereas order by nome_fantasia asc;

# 8 - Mostrar os nomes dos aeroportos que têm pista com tamanho maior que 3000 metros.
select a.Nome, a.Tamanho_Pista from aeroportos as a where Tamanho_Pista > 3000 order by Tamanho_Pista asc;


# 9 - Exibir os detalhes dos voos: ID do voo, assento, aeroporto de partida, data e hora de partida, aeroporto de chegada, data e hora de chegada, modelo da aeronave e nome da companhia aérea.
select v.Id_Voo, v.Assento, v.Aero_Part, v.Data_Part, v.Hora_Part, v.Aero_Cheg, v.Data_Cheg, v.Hora_Cheg, a.Modelo as Modelo_Aeronave, c.Nome_Fantasia as Companhia_Aérea from voos as v
join aeronaves as a on v.aeronave = a.PFX_AERO
join cia_aereas as c on v.cia_aerea = c.id_cia;

# 10 - Para cada voo, mostrar o ID do voo e a quantidade de assentos reservados.
select v.Id_Voo, count(vr.id_voo) as Qtd_Assentos_Reservados from voos as v
join voos_reservas as vr on v.id_voo = vr.id_voo and v.assento = vr.assento
group by v.id_voo;
# não entendi muito bem os "assentos reservados" já que na associativa VR é tudo PK, pq que se repete o id_reserva?

# 11 - Contar quantos passageiros têm nacionalidade brasileira.
select Nacionalidade, count(nacionalidade) as Qtd_Pessoas from passageiros group by Nacionalidade;

# 12 - Listar os nomes das aeronaves e o ano de fabricação que possuem mais de 150 poltronas.
select a.Modelo, a.Ano_Fabr, a.Poltronas from aeronaves as a where poltronas > 150 order by Poltronas asc;

# 13 - Mostrar o nome dos passageiros e a data da última reserva que eles fizeram.
select p.Nome, p.Sobrenome, max(r.data_reserva) as Última_Reserva from passageiros as p
join passageiros_reservas as pr on p.cod_passageiro = pr.passageiro
join reservas as r on pr.id_reserva = r.id_reserva
group by p.cod_passageiro;


# 14 - Contar quantas reservas foram feitas por cada passageiro.
select p.Nome, p.Sobrenome, count(pr.passageiro) as Qtd_Reservas from passageiros as p
join passageiros_reservas as pr on pr.passageiro = p.cod_passageiro
group by p.cod_passageiro;

# 15 - Para cada reserva feita em 2023, mostrar o ID da reserva, o valor da reserva e a porcentagem desse valor em relação ao valor total de reservas feitas em 2023.
select Id_Reserva, Valor_Reserva, ((valor_reserva/(select sum(valor_reserva) from reservas)) * 100) as Porcentagem 
from reservas
where year(data_reserva) = 2024
group by id_reserva;
#ESTARIA CERTO ESSE CÓDIGO???

##BDEX_3
## 1) Exibir todas as informações da tabela `USUARIOS`.
select * from usuarios;

## 2) Mostrar os nomes, sobrenomes e e-mails de todos os usuários.
select nome_usuario as Usuários,sobrenome as Sobrenomes, email as "E-mails" from usuarios;

## 3) Listar os nomes e descrições de todos os grupos.
select nome_grupo as Grupos, descricao as Descrição from grupos;

## 4) Exibir os detalhes das postagens: ID da postagem, texto, data e hora, e o nome do usuário que postou.
select p.id_post as Id_Postagem, p.texto as Texto, p.data_hora as Data_e_Hora, u.nome_usuario as Usuário from postagens as p 
join usuarios as u on p.usuario = u.id_usuario;

## 5) Listar o nome dos usuários e a quantidade de postagens que cada um fez.
select u.nome_usuario as Usuário, count(p.usuario) as Qt_Post from postagens as p 
join usuarios as u on p.usuario = u.id_usuario group by Usuário order by Qt_Post desc;

## 6) Mostrar os nomes dos usuários que fizeram comentários em 2024.
select u.nome_usuario as Usuário, c.texto as Comentário from usuarios as u 
join comentarios as c on u.id_usuario = c.usuario where year(datahora)=2024;

## 7) Listar todos os grupos, ordenados pelo nome do grupo de A a Z.
select nome_grupo as Grupos from grupos order by Grupos asc;

## 8) Mostrar os nomes dos grupos que têm a palavra "Tecnologia" na descrição.
select nome_grupo as Grupos, descricao as Descrição from grupos where descricao like "%tecnologia%";
select * from grupos;

## 9) Exibir os detalhes dos comentários: ID do comentário, texto, data e hora, nome do usuário que comentou e ID da postagem comentada.
select c.id_comentario as Id_Comentário, c.texto as Comentário, c.datahora as Data_e_Hora, u.nome_usuario as Usuários, p.id_post as Id_Postagem from comentarios as c
join usuarios as u on u.id_usuario = c.usuario
join postagens as p on c.post = p.id_post;

## 10) Para cada postagem, mostrar o ID da postagem e a quantidade de comentários.
select p.id_post as Id_Postagem, count(c.post) as Qtd_Comentários from postagens as p
join comentarios as c on p.id_post = c.post group by p.id_post;

## 11) Contar quantos seguidores cada usuário possui.
select u.id_usuario as ID_Usu, u.nome_usuario as Usuários, count(su.usuario) as Qtd_Seguidores from usuarios as u
join seguidores_usuarios as su on su.usuario = u.id_usuario group by ID_Usu;

## 12) Listar os nomes dos usuários que pertencem ao grupo "Desenvolvimento".
select u.nome_usuario as Usuários from usuarios as u join usuarios_grupos as ug on ug.usuario = u.id_usuario
join grupos as g on ug.grupo = g.id_grupo where nome_grupo like "Desenvolvimento";

## 13) Mostrar o nome dos usuários e a data e hora da última postagem que eles fizeram.
select distinct u.nome_usuario as Usuários, max(p.data_hora) as Data_Hora_Postagem from usuarios as u
join postagens as p on u.id_usuario = p.usuario group by Usuários;

## 14) Contar quantas postagens cada usuário fez.
select u.nome_usuario as Usuários, count(p.usuario) as Qtd_Postagens from usuarios as u 
join postagens as p on u.id_usuario = p.usuario group by Usuários;

## 15) Para cada grupo, exibir o nome do grupo e a quantidade de usuários que pertencem a ele.
select g.nome_grupo as Grupos, count(ug.usuario) as Qtd_Usuários from grupos as g 
join usuarios_grupos as ug on ug.grupo = g.id_grupo group by id_grupo;
select * from usuarios_grupos;