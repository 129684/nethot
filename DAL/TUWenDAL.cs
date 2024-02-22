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
   public  class TUWenDAL
    {
       public static DataTable selectTWEN()
       {
           string sql = "SELECT  [tpID]"+
     " ,[tpnaem]"+
     " ,[tp]"+
     " ,[wenzi]"+
  "FROM [JiuDianS].[dbo].[TUwewn]";

           DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
               .SqlClient.SqlParameter[] { });
           return dt;
       }


       public static bool AddTUwen(TWZSModel game)
       {
           string sql = string.Format("insert into TUwewn(tpnaem,tp,wenzi)  values('{0}','{1}','{2}')", game.tpnaem, game.tp,game.wenzi);
           bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

           return isucc;

       }



       public static bool DeleteTUWEN(string tpID)
       {
           string sql = string.Format("delete from TUwewn where tpID='{0}'", tpID);
           bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

           return isucc;
       }

       public static bool updateTw(TWZSModel game)
       {
           string sql = string.Format("update TUwewn set tpnaem='{0}',tp='{1}',wenzi='{2}'where tpID='{3}'", game.tpnaem,game.tp,game.wenzi,game.tpID);
           bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

           return isucc;
       }

    }
}
