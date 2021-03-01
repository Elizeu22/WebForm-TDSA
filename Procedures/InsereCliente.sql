    
CREATE Procedure [dbo].[InsereCliente](        
  @Nome varchar(100),        
  @DataNascimento datetime,        
  @Ativo bit    
  --@Id int OUTPUT         
 )        
 AS BEGIN         
     
        
 insert into Cliente(CLI_NOME,CLI_DATANASCIMENTO,CLI_ATIVO) values(        
 @Nome,        
 Convert(varchar(10), @DataNascimento,103),    
 @Ativo       
    
 );        
    
        
 END; 