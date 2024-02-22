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
   public  class FJXinXInfoDAL
    {
       public static DataTable selectFJXinxALL()
       {
  //         string sql = "SELECT  [FJID]" +
  //    ",[ziID]" +
  //    ",[money]" +
  //   " ,[shifouruzu]" +
  //    ",[ruzhutime]"+
  //   " ,[tftime]"+
  //"FROM [JiuDian].[dbo].[FJXXiB]";
           string sql = "select*from FJXXiB f1,FJLXB f2 where f1.ziID=f2.ziID";


           DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
               .SqlClient.SqlParameter[] { });
           return dt;
       }

       public static bool AddFJTJ(FJXinxiModel game)
       {
           string sql = string.Format("insert into FJXXiB(ziID,money,shifouruzu)  values('{0}','{1}','{2}'')",game.ziID,game.money,game.shifouruzu);
           bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

           return isucc;

       }


       public static bool updateFJXX(FJXinxiModel game)
       {
           string sql = string.Format("update FJXXiB set shifouruzu='{0}' where FJID='{1}'",game.shifouruzu,game.FJID);
           bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

           return isucc;
       }
    }
}
