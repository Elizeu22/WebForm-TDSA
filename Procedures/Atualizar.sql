  
CREATE Procedure [dbo].[Atualizar](      
  @Nome varchar(100),      
  @DataNascimento date,      
  @Ativo bit,     
  @Id int    
     
       
 )      
 AS BEGIN       
      
 Update Cliente set      
 CLI_NOME=@Nome,      
 CLI_DATANASCIMENTO=@DataNascimento,      
 CLI_ATIVO=@Ativo    
 where CLI_ID=@id      
       
 END; 