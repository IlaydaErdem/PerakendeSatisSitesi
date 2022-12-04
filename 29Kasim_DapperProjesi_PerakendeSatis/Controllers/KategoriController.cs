using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using _29Kasim_DapperProjesi_PerakendeSatis.Models;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Controllers
{
    public class KategoriController : Controller
    {
        // GET: Kategori
        public ActionResult Index()
        {
            return View(DP.ReturnList<KategoriModel>("KategoriListele"));
        }

        [HttpGet]
        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("KategoriNo", id);
                return View(DP.ReturnList<KategoriModel>("KategoriSirala", param).FirstOrDefault<KategoriModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(KategoriModel urun)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("KategoriNo", urun.KategoriNo);
            param.Add("KategoriAdi", urun.KategoriAdi);
            param.Add("UrunNo", urun.UrunNo);
            param.Add("KategoriAciklama", urun.KategoriAciklama);
            

            DP.ExecuteWReturn("KategoriEy", param);
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("KategoriNo", id);
            DP.ExecuteWReturn("KategoriSil", param);
            return RedirectToAction("Index");
        }
    }
}