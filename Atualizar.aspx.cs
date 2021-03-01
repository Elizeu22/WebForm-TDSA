using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TDSA.Model;
using TDSA.Repositorio;

namespace TDSA
{
    public partial class Atualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                
                Persistencia Seleciona = new Persistencia();

                 Cliente DadoSeleciona = Seleciona.SelecionarPorId(Int32.Parse(AtualizarID.Text));


            if (DadoSeleciona == null)
            {
                Response.Write("<script>alert('DADOS NAO ENCONTRADOS')</script>");
            }

            else
            {
                AtualizarNome.Text = DadoSeleciona.Nome;
                AtualizarDataNascimento.Text = DadoSeleciona.DataNascimento.ToString();
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            AtualizarNome.Text = "";
            AtualizarDataNascimento.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var AtualizarDado = new Repositorio.Persistencia();

            var DadosAtualizados = new Model.Cliente();

            DadosAtualizados.id = Convert.ToInt32(AtualizarID.Text);
            DadosAtualizados.Nome = AtualizarNome.Text;
            DadosAtualizados.DataNascimento = Convert.ToDateTime(AtualizarDataNascimento.Text);
            DadosAtualizados.Ativo = DropDownList1.Text;

            AtualizarDado.AtualizarCliente(DadosAtualizados);

            AtualizarNome.Text = "";
            AtualizarDataNascimento.Text = "";
            AtualizarID.Text = "";


            Response.Write("<script>alert('DADOS ATUALIZADOS COM SUCESSO')</script>");

        }

        protected void AtualizarNome_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}