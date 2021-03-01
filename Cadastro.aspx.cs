using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TDSA.Repositorio;
using TDSA.Model;

namespace TDSA
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var insere = new Repositorio.Persistencia();

            var dados = new Model.Cliente();

            dados.Nome = Nome.Text;
            dados.DataNascimento = Convert.ToDateTime(DataNascimento.Text);
            dados.Ativo = DropDownList1.Text;

            insere.CadastrarDivida(dados);

            Nome.Text = "";
            DataNascimento.Text = "";


            Response.Write("<script>alert('DADOS GRAVADOS COM SUCESSO')</script>");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Nome.Text = "";
            DataNascimento.Text = "";
        }
    }
}