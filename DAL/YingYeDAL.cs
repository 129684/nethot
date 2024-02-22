using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using GameSysDAL;

namespace DAL
{
   public  class YingYeDAL
    {
        public static DataTable selectYyeYuanALL()
        {
            string sql = "SELECT [YingYEID]"

       + ",[Yzhanghao]"
      + " ,[Ymima]" +
  " FROM [JiuDianS].[dbo].[YingYeYuan]";

            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
                .SqlClient.SqlParameter[] { });
            return dt;
        }
    }
}
