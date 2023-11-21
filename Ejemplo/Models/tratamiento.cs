using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class tratamiento
    {
        BdComun conn = new BdComun();

        public string idbovino { get; set; }

        public string nombre { get; set; }
        public string fecha { get; set; }
        
        public string fkbovino { get; set; }



        public bool RegistrarTratamiento(tratamiento obj)
        {
            string[] sql = new string[1];

            sql[0] = String.Format("CALL `RegistrarTratamiento`('{0}', '{1}', '{2}')", obj.nombre, obj.fecha, obj.fkbovino);
            return conn.RealizarTransaccion(sql);
        }


    }

}