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
   public  class GameInfoBLL
    {
       public static DataTable selectGameInfoALL()
       {

           return GameInfoDAL.selectGameInfoALL();
       }

       public static GameInofoModel selectByGameID(string gameid)
       {
           DataTable dt = selectGameInfoALL();
           foreach (DataRow item in dt.Rows)
           {
               if (item["YingYEID"].ToString() == gameid)
               {
                   GameInofoModel game = new GameInofoModel();
                   game.YingYEID = int.Parse(item["YingYEID"].ToString());
                   game.Yname = item["Yname"].ToString();
                   game.Ysex = item["Ysex"].ToString();
                   game.Yage = item["Yage"].ToString();
                   game.Yzhanghao = item["Yzhanghao"].ToString();
                   game.Ymima = item["Ymima"].ToString();
                   return game;
               }
           }
           return null;
       }

       public static bool AddGameInfo(GameInofoModel game)
       {
           return GameInfoDAL.AddGameInfo(game);
       }

       public static bool DeleteGameInfo(string YingYEID)
       {
           return GameInfoDAL.DeleteGameInfo(YingYEID);
       }


       public static bool updateGameinfo(GameInofoModel game)
       {
           return GameInfoDAL.updateGameinfo(game);
       }
    }
}
