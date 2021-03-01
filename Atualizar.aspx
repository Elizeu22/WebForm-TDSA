<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atualizar.aspx.cs" Inherits="TDSA.Atualizar" %>

<%@ Register assembly="DevExpress.Web.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

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



    <title>Atualizar</title>
</head>
<body>

      <div class="jumbotron">
        <h1>Atualizar</h1>
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

    <div class="col-sm-8">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID CLIENTE"></asp:Label>
            <asp:TextBox ID="AtualizarID" runat="server" class="form-control" required="true" title="Campo iD e obrigatorio"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Selecionar" class="btn btn-danger" OnClick="Button1_Click" />
         <p>&nbsp;</p>

        <p>
            <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="AtualizarNome" runat="server" class="form-control" OnTextChanged="AtualizarNome_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Data Nascimento"></asp:Label>
        <asp:TextBox ID="AtualizarDataNascimento" runat="server" class="form-control"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Ativo"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="202px" class="form-control">
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem>Nao</asp:ListItem>
            </asp:DropDownList>
        </p>

         <asp:Button ID="Button2" runat="server" Text="Atualizar"  class="btn btn-primary" OnClick="Button2_Click" />
      <asp:Button ID="Button3" runat="server" Text="Cancelar" class="btn btn-danger" OnClick="Button3_Click"/>

    </form>
        
     
   </div>
</body>
</html>
