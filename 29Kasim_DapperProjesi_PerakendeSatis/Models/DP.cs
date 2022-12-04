using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data;
using System.Data.SqlClient;

namespace _29Kasim_DapperProjesi_PerakendeSatis.Models
{
    public class DP
    {
        private static string connectionString = @"Server=316-11\SQLEXPRESS;Database=29KasimProje_PerakendeSatisYonetimi;uid=sa;pwd=I$kur2022#!";
        //private static string connectionString = @"Server=DESKTOP-F4F1EV1\SQLEXPRESS;Database=29KasimProje_PerakendeSatisYonetimi;Integrated Security=true";

        public static void ExecuteWReturn(string procadi, DynamicParameters param=null)
        {
            using(SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                baglanti.Execute(procadi, param, commandType: CommandType.StoredProcedure);
                
            }
        }

        public static T ExecuteReturnScalar<T>(string procadi, DynamicParameters param = null)
        {
            using(SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                return (T)Convert.ChangeType(baglanti.ExecuteScalar(procadi, param, commandType: CommandType.StoredProcedure), typeof(T));

            }
        }

        public static IEnumerable<T> ReturnList<T>(string procadi, DynamicParameters param = null)
        {
            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                return baglanti.Query<T>(procadi, param, commandType: CommandType.StoredProcedure);
            }
        }
    }
}