using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TDSA.Repositorio
{
    public class Conexao
    {

        protected SqlConnection Con;

        protected SqlCommand Cmd;

        protected SqlDataReader Dr;


        protected void AbreConexao()
        {
            try
            {

                

                Con = new SqlConnection("Data Source=DESKTOP-6GDG9SO\\SQLEXPRESS;Initial Catalog=TDSA;Integrated Security=true");
                Con.Open();
            }

            catch (Exception e)
            {
                throw new Exception("Erro ao conectar base de dados" + e.Message);

            }
        }


        protected void FecharConexao()
        {

            try
            {
                if (Con != null)
                {
                    Con.Close();
                }
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao fechar Conexao:" + e.Message);
            }

        }


    }

}