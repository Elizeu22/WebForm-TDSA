CREATE Procedure [dbo].[Selecionar](    
    
 @Id int    
 )    
    
 AS BEGIN    
 select CLI_NOME,CLI_DATANASCIMENTO,CLI_ATIVO from Cliente where CLI_ID=@id;    
    
 END    