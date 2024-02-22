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
  public   class KRFJchaxDAL
    {
        public static DataTable selectKRFJCXALL()
        {
            //         string sql = "SELECT  [FJID]" +
            //    ",[ziID]" +
            //    ",[money]" +
            //   " ,[shifouruzu]" +
            //    ",[ruzhutime]"+
            //   " ,[tftime]"+
            //"FROM [JiuDian].[dbo].[FJXXiB]";
            string sql = "select*from FJXXiB f1,FJLXB f2 where f1.ziID=f2.ziID  and f1.shifouruzu='空房' ";


            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
                .SqlClient.SqlParameter[] { });
            return dt;
        }
    }
}
