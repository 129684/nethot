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
   public  class KRFJCXBLL
    {
        public static DataTable selectFJXinxALL()
        {
            return KRFJchaxDAL.selectKRFJCXALL();
        }


        public static FJXinxiModel selectByGameID(string gameid)
        {
            DataTable dt = selectFJXinxALL();
            foreach (DataRow item in dt.Rows)
            {
                if (item["FJID"].ToString() == gameid)
                {
                    FJXinxiModel game = new FJXinxiModel();
                    game.ziID = int.Parse(item["ziID"].ToString());
                    game.money = item["money"].ToString();
                    game.shifouruzu = item["shifouruzu"].ToString();

                    return game;
                }
            }
            return null;
        }
    }
}
