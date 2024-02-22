using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using MODEL;

namespace BLL
{
    public  class TUWenBLL
    {

        public static DataTable TUWEN()
        {
            return TUWenDAL.selectTWEN();
        }


        public static TWZSModel selectByGameID(string gameid)
        {
            DataTable dt = TUWEN();
            foreach (DataRow item in dt.Rows)
            {
                if (item["tpID"].ToString() == gameid)
                {
                    TWZSModel game = new TWZSModel();
                    game.tpID = int.Parse(item["tpID"].ToString());
                    game.tpnaem = item["tpnaem"].ToString();
                    game.tp = item["tp"].ToString();
                    game.wenzi = item["wenzi"].ToString();

                    return game;
                }
            }
            return null;
        }

        public static bool AddTU(TWZSModel game)
        {
            return TUWenDAL.AddTUwen(game);
        }

        public static bool DeleteTP(string tpID)
        {
            return TUWenDAL.DeleteTUWEN(tpID);
        }

        public static bool updateTW(TWZSModel game)
       {
           return TUWenDAL.updateTw(game);
       }
    }
}
