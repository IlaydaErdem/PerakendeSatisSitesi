using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using _29Kasim_DapperProjesi_PerakendeSatis.Models;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Controllers
{
    public class MusteriController : Controller
    {
        // GET: Musteri
        public ActionResult Index()
        {
            return View(DP.ReturnList<MusteriModel>("MusteriListele"));
        }

        [HttpGet]
        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("MusteriNo", id);
                return View(DP.ReturnList<MusteriModel>("MusteriSirala", param).FirstOrDefault<MusteriModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(MusteriModel urun)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("MusteriNo", urun.MusteriNo);
            param.Add("MusteriAdSoyad", urun.MusteriAdSoyad);
            param.Add("MusteriTelefon", urun.MusteriTelefon);
            param.Add("MusteriMail", urun.MusteriMail);
            param.Add("MusteriAdres", urun.MusteriAdres);

            DP.ExecuteWReturn("MusteriEy", param);
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("MusteriNo", id);
            DP.ExecuteWReturn("MusteriSil", param);
            return RedirectToAction("Index");
        }
    }
}