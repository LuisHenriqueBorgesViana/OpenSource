-- Liberação Completa (Atualizar, Consultar, Inserir e Deletar e Referenciar)
GRANT SELECT, INSERT, UPDATE, DELETE
   ON owner.tabela_or_view
	 TO usuario
 WITH GRANT OPTION;

-- Liberação para Somente Consultar
GRANT SELECT
   ON owner.tabela_or_view
	 TO usuario;

-- Liberação para Somente Inserir
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;

-- Liberação para Somente Atualizar
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;

-- Liberação para Somente Excluir
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;
	 
-- Liberação Completa (Atualizar, Consultar, Inserir e Deletar)
GRANT SELECT, INSERT, UPDATE, DELETE
   ON owner.tabela_or_view

-- Liberação Total
GRANT ALL PRIVILEGES
   ON owner.tabela_or_view
	 TO usuario
 WITH GRANT OPTION;
