<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deletar.aspx.cs" Inherits="TDSA.Deletar" %>

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




    <title></title>
</head>
<body>

      <div class="jumbotron">
        <h1>Excluir</h1>
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


<p>&nbsp;</p>

    <div class="col-sm-10">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label2" runat="server" Text="ID DO CLIENTE"></asp:Label>
        <asp:TextBox ID="DeletarId" runat="server" class="form-control" required="true"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="Selecionar" class="btn btn-danger" OnClick="Button1_Click"/>
        <p>&nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="DeletarNome" runat="server" class="form-control"></asp:TextBox>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Data Nascimento:"></asp:Label>
        <asp:TextBox ID="DeletarDataNascimento" runat="server" class="form-control"></asp:TextBox>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Ativo:"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="202px" class="form-control">
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem>Nao</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Button ID="Button2" runat="server" Text="Deletar" class="btn btn-primary" OnClick="Button2_Click1"/>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancelar" class="btn btn-danger"/>
    </form>
   </div>
</body>
</html>
