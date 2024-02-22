using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using MODEL;

namespace BLL
{
   public  class FJXIxinxiBLL
    {
       public static DataTable selectFJXinxALL()
       {
           return FJXinXInfoDAL.selectFJXinxALL();
       }


       public static FJXinxiModel selectByGameID(string gameid)
       {
           DataTable dt = selectFJXinxALL();
           foreach (DataRow item in dt.Rows)
           {
               if (item["FJID"].ToString() == gameid)
               {
                   FJXinxiModel game = new FJXinxiModel();
                   game.ziID= int.Parse(item["ziID"].ToString());
                   game.money = item["money"].ToString();
                   game.shifouruzu = item["shifouruzu"].ToString();
                   
                   return game;
               }
           }
           return null;
       }

       public static bool AddFJTJ(FJXinxiModel game)
       {
           return FJXinXInfoDAL.AddFJTJ(game);
       }

       public static bool updateFJXX(FJXinxiModel game)
       {
           return FJXinXInfoDAL.updateFJXX(game);
       }
    }
}
