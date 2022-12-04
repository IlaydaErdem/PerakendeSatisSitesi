using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Models
{
    public class UrunModel
    {
        public int UrunNo { get; set; }
        public string UrunAdi { get; set; }

        public string UrunAciklama { get; set; }

        public int UrunFiyat { get; set; }

        public int Stok { get; set; }

    }
}