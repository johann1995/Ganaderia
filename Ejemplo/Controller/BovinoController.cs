using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class BovinoController
    {
         public bovino bov = new bovino();


        public BovinoController()
        {
            bov = new bovino();
        }

        public BovinoController(string m,string a,string b,string c,string d,string e,string f,string g,string h,string i,string j)
        {
            bov.idbovino = m;
            bov.categoria = a;
            bov.fechain = b;
            bov.marca = c;
            bov.raza = d;
            bov.edading = e;
            bov.pesoin = f;
            bov.pesoventa = g;
            bov.fechaventa = h;
            bov.fkpersona = i;
            bov.fkfinca = j;
        }

        public bool registrarbovino(bovino obj)
        {
            return bov.RegistrarBovino(obj);
        }

        public bool ModificarBovinos(bovino obj)
        {
            return bov.ModificarBovino(obj);
        }
        //public DataTable mostrartrabajador()
        //{
        //    return ta.MostrarTrabajadores();
        //}
        public DataTable buscarBovinoS(string a)
        {
            return bov.BuscarBovinos(a);
        }

        public DataTable MostrarBovinos()
        {
            return bov.MostrarBovino();
        }
        public bool EliminarBovino(string id)
        {
            return bov.EliminarBovino(id);
        }
    }

}
