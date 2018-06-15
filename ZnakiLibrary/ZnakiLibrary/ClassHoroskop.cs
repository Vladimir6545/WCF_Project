using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.Data.Objects;
using System.Data.SqlClient;

namespace ZnakiLibrary
{
    [DataContract]
    public class ClassHoroskop : IHoroscop
    {
        [DataMember]
        public int id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string Discription { get; set; }
        [DataMember]
        public string Path { get; set; }

        public ClassHoroskop ConnectionDataBase(int day, int month)
        {
            if ((month == 3 && day >= 21) || (month == 4 && day <= 20))
                day = 1;  // Овен
            else
  if ((month == 4 && day >= 21) || (month == 5 && day <= 20))
                day = 2;  // Телец
            else
  if ((month == 5 && day >= 21) || (month == 6 && day <= 21))
                day = 3;  // Близнецы
            else
  if ((month == 6 && day >= 22) || (month == 7 && day <= 22))
                day = 4;  // Рак
            else
  if ((month == 7 && day >= 23) || (month == 8 && day <= 23))
                day = 5;  // Лев
            else
  if ((month == 8 && day >= 24) || (month == 9 && day <= 23))
                day = 6;  // Дева
            else
  if ((month == 9 && day >= 24) || (month == 10 && day <= 22))
                day = 7;  // Весы
            else
  if ((month == 10 && day >= 23) || (month == 11 && day <= 22))
                day = 8;  // Скорпион
            else
  if ((month == 11 && day >= 23) || (month == 12 && day <= 21))
                day = 9; // Стрелец
            else
  if ((month == 12 && day >= 22) || (month == 1 && day <= 20))
                day = 10;  // Козерог
            else
  if ((month == 1 && day >= 21) || (month == 2 && day <= 19))
                day = 11;  // Водолей
            else
  if ((month == 2 && day >= 20) || (month == 3 && day <= 20))
                day = 12;  // Рыбы
            //создаем открытое подключение
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = @"Data Source = localhost; Initial Catalog = ZnakiZodiaka; Integrated Security = True";
            cn.Open();
            ClassHoroskop hor = new ClassHoroskop();
            //создаем объкт команды SQL
            string strSQL = "Select * From Znaki where id=" + day;
            SqlCommand myCommand = new SqlCommand(strSQL, cn);
            SqlDataReader myDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
            while (myDataReader.Read())
            {
                hor.id = int.Parse(myDataReader["id"].ToString().Trim());
                hor.Name = myDataReader["Name"].ToString().Trim();
                hor.Discription = myDataReader["Discription"].ToString().Trim();
                hor.Path = myDataReader["image"].ToString().Trim();
            }
            return hor;
        }
    }
}
