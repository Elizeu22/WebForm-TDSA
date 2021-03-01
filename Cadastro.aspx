<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="TDSA.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



<title>Cadastro</title>
    <style type="text/css">
        #form1 {
            height: 459px;
        }
    </style>
</head>
<body style="height: 596px">


    <div class="jumbotron">
        <h1>Cadastro Cliente</h1>
   </div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="Cadastro.aspx">Cadastrar Cliente</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Listar.aspx">Lista de Clientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Atualizar.aspx">Atualizar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Deletar.aspx">Deletar</a>
    </li>
  </ul>
</nav>
  
    </br>
    <div class="col-sm-8">
    <form id="form1" runat="server">
        <div>
        </div>
       
        <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="NOME"></asp:Label>
        <asp:TextBox ID="Nome" runat="server" class="form-control" OnTextChanged="TextBox1_TextChanged" required="true" title="Campo Nome e obrigatorio"></asp:TextBox>
        </div>
       
      

        <div class="form-group">
        <p>
        <asp:Label ID="Label2" runat="server" Text="DATA NASCIMENTO"></asp:Label>
        <asp:TextBox ID="DataNascimento" runat="server" class="form-control" placeholder="00/00/000" required="true" title="Campo Data Nascimento e obrigatorio"></asp:TextBox>
         </p>
        </div>

       <div class="form-group">
        <p>
        <asp:Label ID="Label3" runat="server" Text="ATIVO"></asp:Label>
            
            <asp:DropDownList ID="DropDownList1" runat="server" Width="202px" class="form-control">
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem Value="Nao"></asp:ListItem>
            </asp:DropDownList>
              
        </p>
       </div>





        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="CADASTRAR" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" class="btn btn-danger"  Text="CANCELAR" OnClick="Button2_Click" />
    </form>

        </div>
      
</body>
</html>
