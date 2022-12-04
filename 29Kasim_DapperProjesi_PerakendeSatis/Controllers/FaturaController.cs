using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using _29Kasim_DapperProjesi_PerakendeSatis.Models;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Controllers
{
    public class FaturaController : Controller
    {
        // GET: Fatura
        
            public ActionResult Index()
            {
                return View(DP.ReturnList<FaturaModel>("FaturaListele"));
            }

            [HttpGet]
            public ActionResult EY(int id = 0)
            {
                if (id == 0)
                    return View();
                else
                {
                    DynamicParameters param = new DynamicParameters();
                    param.Add("FaturaNo", id);
                    return View(DP.ReturnList<FaturaModel>("FaturaSirala", param).FirstOrDefault<FaturaModel>());
                }
            }

            [HttpPost]
            public ActionResult EY(FaturaModel urun)
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("FaturaNo", urun.FaturaNo);
                param.Add("MusteriNo", urun.MusteriNo);
                param.Add("FaturaTarih", urun.FaturaTarih);
                

                DP.ExecuteWReturn("FaturaEy", param);
                return RedirectToAction("Index");
            }

            public ActionResult Delete(int id = 0)
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("FaturaNo", id);
                DP.ExecuteWReturn("FaturaSil", param);
                return RedirectToAction("Index");
            }
        }
}