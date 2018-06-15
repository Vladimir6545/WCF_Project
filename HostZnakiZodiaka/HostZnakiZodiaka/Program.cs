using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using ZnakiLibrary;

namespace HostZnakiZodiaka
{
    class Program
    {
        static void Main(string[] args)
        {
            using (ServiceHost host = new ServiceHost(typeof(ClassHoroskop)))
            {
                host.Open();
                Console.WriteLine("Service is ready");
                Console.ReadLine();
            }
        }
    }
}
