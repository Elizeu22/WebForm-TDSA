<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="TDSA.Listar" %>

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

    <title>Listar Clientes</title>
</head>
<body>

      <div class="jumbotron">
        <h1>Lista de Clientes</h1>
   </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="Cadastro.aspx">Cadastrar Cliente</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Listar.aspx">Listar Cliente</a>
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
        <asp:GridView ID="GridView1" runat="server" Width="1110px" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" BackColor="#669999" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="CLI_ID" HeaderText="CLI_ID" InsertVisible="False" ReadOnly="True" SortExpression="CLI_ID" />
                <asp:BoundField DataField="CLI_NOME" HeaderText="CLI_NOME" SortExpression="CLI_NOME" />
                <asp:BoundField DataField="CLI_DATANASCIMENTO" HeaderText="CLI_DATANASCIMENTO" SortExpression="CLI_DATANASCIMENTO" />
                <asp:CheckBoxField DataField="CLI_ATIVO" HeaderText="CLI_ATIVO" SortExpression="CLI_ATIVO" />
            </Columns>
            <PagerStyle BackColor="#3366FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TDSAConnectionString %>" SelectCommand="SELECT [CLI_ID], [CLI_NOME], [CLI_DATANASCIMENTO], [CLI_ATIVO] FROM [Cliente]"></asp:SqlDataSource>
    </form>
   </div>
</body>
</html>
