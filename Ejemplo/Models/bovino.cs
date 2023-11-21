using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class bovino
    {
        BdComun conn = new BdComun();

        public string idbovino { get; set; }

        public string categoria { get; set; }
        public string fechain { get; set; }
        public string marca { get; set; }
        public string raza { get; set; }
        public string edading { get; set; }

        public string pesoin { get; set; }
        public string pesoventa { get; set; }
        public string fechaventa { get; set; }
        public string fkpersona { get; set; }
        public string fkfinca { get; set; }



        public bool RegistrarBovino(bovino obj)
        {
            string[] sql = new string[1];

            sql[0] = String.Format("CALL `RegistrarBovino`('{0}', '{1}', '{2}', '{3}', '{4}','{5}','{6}','{7}','{8}','{9}')", obj.categoria, obj.fechain, obj.marca, obj.raza, obj.edading, obj.pesoin, obj.pesoventa, obj.fechaventa, obj.fkpersona, obj.fkfinca);
            return conn.RealizarTransaccion(sql);
        }
        public DataTable BuscarBovinos(string fk_finca)
        {
            if (!string.IsNullOrEmpty(fk_finca))
            {
                fk_finca = $"WHERE finca.idFinca = '{fk_finca}'";
            }

            string sql = $"SELECT bovino.idbovino,bovino.categoria,bovino.fecha_ingreso,bovino.marca,bovino.raza,bovino.edad_ingreso,bovino.peso_ingreso,bovino.peso_venta,bovino.fecha_venta FROM bovino INNER JOIN finca ON bovino.fk_fincas=finca.idFinca {fk_finca}";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool ModificarBovino(bovino obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `ModificarBovino`('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", obj.idbovino, obj.categoria, obj.fechain, obj.marca, obj.raza, obj.edading, obj.pesoin, obj.pesoventa, obj.fechaventa);
            return conn.RealizarTransaccion(sql);
        }

        public DataTable MostrarBovino()
        {
            string sql = @"SELECT  bovino.idbovino,bovino.categoria,bovino.fecha_ingreso,bovino.marca,
bovino.raza,bovino.edad_ingreso,bovino.peso_ingreso,bovino.peso_venta,bovino.fecha_venta FROM bovino;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public bool EliminarBovino(string p_id)
        {
            string[] sql = new string[1];
            sql[0] = @"delete from bovino where bovino.idbovino = '" + p_id + "' ;";
            return conn.RealizarTransaccion(sql);
        }

    }

}