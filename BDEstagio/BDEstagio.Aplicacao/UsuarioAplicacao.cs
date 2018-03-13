using BDEstagio.Dominio;
using BDEstagio.Repositorio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BDEstagio.Aplicacao
{
    public class UsuarioAplicacao
    {
        private bd bd;
        private void Inserir(Tarefas tarefas)
        {
            var strQuery = "";
            strQuery += "INSERT INTO Tarefas(Tarefa, Status)";
            strQuery += string.Format(" VALUES ('{0}', '{1}')", tarefas.Tarefa, tarefas.Status);

            using(bd = new bd())
            {
                bd.ExecutaComando(strQuery);
            }
        }

        private void Alterar(Tarefas tarefas)
        {
            var strQuery = "";
            strQuery += "UPDATE tarefas SET ";
            strQuery += string.Format("Tarefa = '{0}',", tarefas.Tarefa);
            strQuery += string.Format("Status = '{0}' ", tarefas.Status);
            strQuery += string.Format("WHERE TarefaId = {0} ", tarefas.TarefaId);

            using (bd = new bd())
            {
                bd.ExecutaComando(strQuery);
            }
        }

        public void Salvar(Tarefas tarefas)
        {
            if (tarefas.TarefaId > 0)
            {
                Alterar(tarefas);
            }else
            {
                Inserir(tarefas);
            }
        }

        public void Excluir(int Id)
        {
            using (bd = new bd())
            {
                var strQuery = string.Format(" DELETE FROM Tarefas WHERE TarefaId = {0}", Id);
                bd.ExecutaComando(strQuery);
            }
        }

        public List<Tarefas> ListarTodos()
        {
            using (bd = new bd())
            {
                var strQuery = "SELECT * FROM Tarefas";
                var retorno = bd.ExecutaComandoComRetorno(strQuery);
                return ReaderEmLista(retorno);
            }
        }

        public Tarefas ListarPorId(int id)
        {
            using (bd = new bd())
            {
                var strQuery = string.Format("SELECT * FROM Tarefas WHERE TarefaId = {0}", id);
                var retorno = bd.ExecutaComandoComRetorno(strQuery);
                return ReaderEmLista(retorno).FirstOrDefault();
            }
        }

        private List<Tarefas>ReaderEmLista(SqlDataReader reader)
        {
            var tarefa = new List<Tarefas>();
            while (reader.Read())
            {
                var tempoObjeto = new Tarefas()
                {
                    TarefaId = int.Parse(reader["TarefaId"].ToString()),
                    Tarefa = reader["Tarefa"].ToString(),
                    Status = reader["Status"].ToString(),
                };

                tarefa.Add(tempoObjeto);
            }

            reader.Close();
            return tarefa;
        }
    }
} 
