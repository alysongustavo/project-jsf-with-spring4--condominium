-- Script permissão aos usuários desenvolvedores

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.person
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.type_documentation
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.documentation
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.person_doc
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.usuario
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.profile
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.usuario_profile
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.funcao
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.profile_funcao
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.apartment
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.home
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.notification
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.receita
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.launch
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.issuance
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.payment
TO 'alyson'@'%'
WITH GRANT OPTION;

GRANT SELECT, INSERT, SHOW VIEW, UPDATE, DELETE
ON db_app_condominio.parametro
TO 'alyson'@'%'
WITH GRANT OPTION;