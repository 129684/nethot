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
   public  class FJLXinfoDAL
    {
       public static DataTable selectFJLxALL()
       {
           string sql = "SELECT  [ziID]"+
      ",[TypeName]"+
 " FROM [JiuDianS].[dbo].[FJLXB]";

           DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
               .SqlClient.SqlParameter[] { });
           return dt;
       }
    }
}
