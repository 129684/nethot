using GameSysDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODEL;

namespace DAL
{
    public  class KRDAL
    {
        public static DataTable selectKRxinxiALL()
        {
            string sql = "SELECT  [KRXinxiID]" +

     " ,[zhanghao]" +
      ",[mima]" +
  "FROM [JiuDianS].[dbo].[KRXinXbiao]";

            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
                .SqlClient.SqlParameter[] { });
            return dt;
        }

      
    }
}
