using BDEstagio.Aplicacao;
using BDEstagio.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WEB.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult Index()
        {
            var appUsuario = new UsuarioAplicacao();
            var listaUsuarios = appUsuario.ListarTodos();
            return View(listaUsuarios);
        }

        public ActionResult Cadastrar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cadastrar(Tarefas tarefas)
        {
            if (ModelState.IsValid)
            {
                var appUsuario = new UsuarioAplicacao();
                appUsuario.Salvar(tarefas);
                return RedirectToAction("Index");
            }
            return View(tarefas);
        }

        public ActionResult Editar(int id)
        {
            var appUsuario = new UsuarioAplicacao();
            var tarefas = appUsuario.ListarPorId(id);

            if(tarefas == null)
            {
                return HttpNotFound();
            }
            return View(tarefas);
        }

        [HttpPost]
        public ActionResult Editar(Tarefas tarefas)
        {
            if (ModelState.IsValid)
            {
                var appUsuario = new UsuarioAplicacao();
                appUsuario.Salvar(tarefas);
                return RedirectToAction("Index");
            }
            return View(tarefas);
        }


    }
}