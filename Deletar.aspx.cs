using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TDSA.Repositorio;
using TDSA.Model;
using System.Data.SqlClient;

namespace TDSA
{
    public partial class Deletar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Persistencia Seleciona = new Persistencia();

            Cliente DadoSeleciona = Seleciona.SelecionarPorId(Int32.Parse(DeletarId.Text));


            if (DadoSeleciona == null)
            {
                Response.Write("<script>alert('DADOS NAO ENCONTRADOS')</script>");
            }

            else
            {

                DeletarNome.Text = DadoSeleciona.Nome;
                DeletarDataNascimento.Text = DadoSeleciona.DataNascimento.ToString();
                DropDownList1.DataTextField = DadoSeleciona.Ativo.ToString();

                if (DropDownList1.DataTextField.Equals("False"))
                {
                    DropDownList1.Text = "Nao";
                }

                else
                {
                    DropDownList1.Text = "Sim";
                }

            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            var Deletar = new Repositorio.Persistencia();

            var DeletarDado = new Model.Cliente();

            DeletarDado.id = Convert.ToInt32(DeletarId.Text);

            Deletar.ExcluirDivida(DeletarDado.id);

            DeletarNome.Text = "";
            DeletarDataNascimento.Text = "";
            DeletarId.Text = "";


            Response.Write("<script>alert('DADOS DELETADOS COM SUCESSO')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DeletarNome.Text = "";
            DeletarDataNascimento.Text = "";
           
        }
    }
}