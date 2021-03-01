using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TDSA.Model;
using TDSA.Repositorio;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TDSA.Repositorio
{
    public class Persistencia: Conexao
    {
        


        public bool CadastrarDivida(Cliente Cadastro)
        {
            try
            {
                AbreConexao();
                Cmd = new SqlCommand("InsereCliente", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Parameters.AddWithValue("@Nome", Cadastro.Nome);
                Cmd.Parameters.AddWithValue("@DataNascimento",Cadastro.DataNascimento.ToString());
                if (Cadastro.Ativo.Equals("Sim"))
                {
                    Cmd.Parameters.AddWithValue("@Ativo", 1);
                }
                else
                {
                    Cmd.Parameters.AddWithValue("@Ativo", 0);
                }

               


                int i = Cmd.ExecuteNonQuery();

                if (i >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }



            }
            catch (Exception e)
            {
                throw new Exception("Erro ao inserir dados:" + e.Message);
            }

            finally
            {
                FecharConexao();
            }
        }


        public Cliente SelecionarPorId(int id)
        {
            Cliente cli = null;

            try
            {
                AbreConexao();
                Cmd = new SqlCommand("Selecionar", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Parameters.AddWithValue("@Id", id);

                Dr = Cmd.ExecuteReader();

                if (Dr.Read())
                {
                    
                    cli = new Cliente();

                    cli.Nome = Dr["CLI_NOME"].ToString();
                    cli.DataNascimento = (DateTime)Dr["CLI_DATANASCIMENTO"];
                    cli.Ativo = Dr["CLI_ATIVO"].ToString();
                   

                }

              
                
            }

            catch (Exception e)
            {
                throw new Exception("Erro ao Selecionar os dados:" + e.Message);
            }

            finally
            {
                FecharConexao();
            }


            return cli;
        }



        public bool AtualizarCliente(Cliente ClienteAtualizado)
        {

            try
            {
                AbreConexao();
                Cmd = new SqlCommand("Atualizar", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Parameters.AddWithValue("@Id", ClienteAtualizado.id);
                Cmd.Parameters.AddWithValue("@Nome", ClienteAtualizado.Nome);
                Cmd.Parameters.AddWithValue("@DataNascimento", ClienteAtualizado.DataNascimento);
              

                if (ClienteAtualizado.Ativo.Equals("Sim"))
                {
                    Cmd.Parameters.AddWithValue("@Ativo", 1);
                }
                else
                {
                    Cmd.Parameters.AddWithValue("@Ativo", 0);
                }


                int Atualizado = Cmd.ExecuteNonQuery();

                if (Atualizado >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }


            }

            catch (Exception e)
            {
                throw new Exception("Erro ao Atualizar:" + e.Message);
            }

            finally
            {
                FecharConexao();
            }

        }



        public bool ExcluirDivida(int id)
        {
            try
            {
                AbreConexao();
                Cmd = new SqlCommand("Deletar", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Parameters.AddWithValue("@Id", id);

                int Deletado = Cmd.ExecuteNonQuery();

                if (Deletado >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }



            }

            catch (Exception e)
            {
                throw new Exception("Erro ao Deletar os dados:" + e.Message);
            }

            finally
            {
                FecharConexao();
            }
        }




    }
}