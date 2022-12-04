using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using _29Kasim_DapperProjesi_PerakendeSatis.Models;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Controllers
{
    public class UrunFaturaController : Controller
    {
        // GET: UrunFatura
        public ActionResult Index()
        {
            return View(DP.ReturnList<UrunFaturaModel>("UrunFaturaListele"));
        }

        [HttpGet]
        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("UrnFtrNo", id);
                return View(DP.ReturnList<UrunFaturaModel>("UrunFaturaSirala", param).FirstOrDefault<UrunFaturaModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(UrunFaturaModel urun)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("UrnFtrNo", urun.UrnFtrNo);
            param.Add("FaturaNo", urun.FaturaNo);
            param.Add("UrunNo", urun.UrunNo);
            param.Add("Tutar", urun.Tutar);

            DP.ExecuteWReturn("UrunFaturaEY", param);
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("UrunFtrNo", id);
            DP.ExecuteWReturn("UrunFaturaSil", param);
            return RedirectToAction("Index");
        }
    }
}