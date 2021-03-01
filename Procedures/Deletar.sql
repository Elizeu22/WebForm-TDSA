    
CREATE Procedure Deletar(    
     
  @Id int    
     
    
 )    
 AS BEGIN     
    
Delete from Cliente where CLI_ID=@id;    
     
 END; 