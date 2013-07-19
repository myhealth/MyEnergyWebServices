using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyEnergyWS.Models;

namespace MyEnergyWS.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var uc = new UsersController();

            User x = new User();

            x.first_name = "Arsénio";

            return View(x);

        }

        public ActionResult Exemplo(User x)
        {
            
            return View(x);
        }
    }
}
