using BDEstagio.Aplicacao;
using BDEstagio.Dominio;
using System.Data.SqlClient;

namespace DOS
{
    class Program
    {
        static void Main(string[] args)
        {
            
            var app = new UsuarioAplicacao();

            SqlConnection conexao = new SqlConnection(@"data source=DESKTOP-4PORDMS\SQLEXPRESS; Integrated Security=SSPI ; Initial Catalog=TesteEstagio");
            conexao.Open();

            


            
            System.Console.Write("Digite a Tarefa: ");
            string Tarefa = System.Console.ReadLine();

            System.Console.Write("Digite o Status: ");
            string Status = System.Console.ReadLine();

            var tarefas = new Tarefas
            {
                Tarefa = Tarefa,
                Status = Status
            };

            //tarefas.TarefaId = 5;

            app.Salvar(tarefas);
            

            


            var dados = app.ListarTodos();

            foreach(var tarefa in dados)
            {
                System.Console.WriteLine("TarefaId:{0}, Tarefa:{1}, Status:{2}", tarefa.TarefaId, tarefa.Tarefa, tarefa.Status);
            }
        }
    }
}   
