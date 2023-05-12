USE db_blog_pessoal;

insert into tb_postagens (id,titulo,texto,data,tb_temas_id,tb_usuarios_id) values (1,'rede social','orkut e melhor','2023-05-12',1,1);
insert into tb_temas (id,descricao) values (1,'um aplicativo');
insert into tb_usuarios (id,nome,usuario,senha,foto) values (1,'facebook','ramon','vasco','bonita');

SELECT * FROM db_blog_pessoal.tb_temas;
SELECT * FROM db_blog_pessoal.tb_usuarios;
SELECT * FROM db_blog_pessoal.tb_postagens;