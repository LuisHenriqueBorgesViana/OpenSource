-- Libera��o Completa (Atualizar, Consultar, Inserir e Deletar e Referenciar)
GRANT SELECT, INSERT, UPDATE, DELETE
   ON owner.tabela_or_view
	 TO usuario
 WITH GRANT OPTION;

-- Libera��o para Somente Consultar
GRANT SELECT
   ON owner.tabela_or_view
	 TO usuario;

-- Libera��o para Somente Inserir
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;

-- Libera��o para Somente Atualizar
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;

-- Libera��o para Somente Excluir
GRANT INSERT
   ON owner.tabela_or_view
	 TO usuario;
	 
-- Libera��o Completa (Atualizar, Consultar, Inserir e Deletar)
GRANT SELECT, INSERT, UPDATE, DELETE
   ON owner.tabela_or_view

-- Libera��o Total
GRANT ALL PRIVILEGES
   ON owner.tabela_or_view
	 TO usuario
 WITH GRANT OPTION;
