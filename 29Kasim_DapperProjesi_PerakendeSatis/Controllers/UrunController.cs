using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using _29Kasim_DapperProjesi_PerakendeSatis.Models;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Controllers
{
    public class UrunController : Controller
    {
        // GET: Urun
        public ActionResult Index()
        {
            return View(DP.ReturnList<UrunModel>("UrunListele"));
        }

        [HttpGet]
        public ActionResult EY(int id=0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("UrunNo", id);
                return View(DP.ReturnList<UrunModel>("UrunSirala", param).FirstOrDefault<UrunModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(UrunModel urun)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("UrunNo", urun.UrunNo);
            param.Add("UrunAdi", urun.UrunAdi);
            param.Add("UrunAciklama", urun.UrunAciklama);
            param.Add("UrunFiyat", urun.UrunFiyat);
            param.Add("Stok", urun.Stok);

            DP.ExecuteWReturn("UrunEY", param);
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id=0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("UrunNo", id);
            DP.ExecuteWReturn("UrunSil", param);
            return RedirectToAction("Index");
        }
    }
}