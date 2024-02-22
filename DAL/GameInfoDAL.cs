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
  public   class GameInfoDAL
    {
      public static DataTable selectGameInfoALL()
      {
          string sql = "SELECT [YingYEID]"+
     " ,[Yname]"
     +" ,[Ysex]"
     +" ,[Yage]"
     +" ,[Yzhanghao]"
     +" ,[Ymima]"
  + "FROM [JiuDianS].[dbo].[YingYeYuan]";

          DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
              .SqlClient.SqlParameter[] { });
          return dt;
      }

    

      public static bool AddGameInfo(GameInofoModel game)
      {
          string sql = string.Format("insert into YingYeYuan(Yname,Ysex,Yage,Yzhanghao,Ymima)  values('{0}','{1}','{2}','{3}','{4}')",game.Yname,game.Ysex,game.Yage,game.Yzhanghao,game.Ymima);
          bool isucc = DBHelper.ExecuteCommand(sql,CommandType.Text,new System.Data.SqlClient.SqlParameter[]{});

          return isucc;

      }

      public static bool DeleteGameInfo(string YingYEID)
      {
          string sql = string.Format("delete from YingYeYuan where YingYEID='{0}'",YingYEID);
          bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

          return isucc;
      }


      public static bool updateGameinfo(GameInofoModel game)
      {
          string sql = string.Format("update YingYeYuan set Yname='{0}',Ysex='{1}',Yage='{2}',Yzhanghao='{3}',Ymima='{4}'where YingYEID='{5}'",game.Yname,game.Ysex,game.Yage,game.Yzhanghao,game.Ymima,game.YingYEID);
          bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

          return isucc;
      }
    }
}
