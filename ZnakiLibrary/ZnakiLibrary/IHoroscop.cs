using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;


namespace ZnakiLibrary
{
    [ServiceContract]
    public interface IHoroscop
    {
        [OperationContract]
       ClassHoroskop ConnectionDataBase(int day, int month);
    }
}
