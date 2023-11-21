using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class TratamientoController
    {
         public tratamiento tra = new tratamiento();


        public TratamientoController()
        {
            tra = new tratamiento();
        }

        public TratamientoController(string m,string a,string b,string c)
        {
            tra.idbovino = m;
            tra.nombre = a;
            tra.fecha = b;
            tra.fkbovino = c;
            
        }

        public bool registrartratamiento(tratamiento obj)
        {
            return tra.RegistrarTratamiento(obj);
        }

      
        
    }

}
