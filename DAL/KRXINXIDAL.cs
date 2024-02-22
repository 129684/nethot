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
  public   class KRXINXIDAL
    {
        public static DataTable selectKRXINXIGALL()
        {
            string sql = "SELECT  [KRXinxiID]" +
    "  ,[xingming]"
     + " ,[sex]"
    + "  ,[dianhua]"
     + " ,[zhanghao]"
      + ",[mima]"
  + "FROM [JiuDianS].[dbo].[KRXinXbiao]";

            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text, new System.Data
                .SqlClient.SqlParameter[] { });
            return dt;
        }



        public static bool AddKRXINTJ(KRModel game)
        {
            string sql = string.Format("insert into KRXinXbiao(xingming,sex,dianhua,zhanghao,mima) values('{0}','{1}','{2}','{3}','{4}')", game.xingming, game.sex, game.dianhua,game.zhanghao,game.mima);
            bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

            return isucc;

        }

        public static bool DeleteGameInfo(string KRXinxiID)
        {
            string sql = string.Format("delete from KRXinXbiao where KRXinxiID='{0}'", KRXinxiID);
            bool isucc = DBHelper.ExecuteCommand(sql, CommandType.Text, new System.Data.SqlClient.SqlParameter[] { });

            return isucc;
        }

    }
}
