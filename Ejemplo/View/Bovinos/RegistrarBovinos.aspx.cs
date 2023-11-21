using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Bovinos
{
    public partial class RegistrarBovinos : System.Web.UI.Page
    {
        FincaController fin = new FincaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarFinca();
            }
        }


        public void CargarFinca()
        {
            FincaController fn = new FincaController();
            drl_finca.DataSource = fn.buscarFINCA(((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
            drl_finca.DataValueField = "idFinca";
            drl_finca.DataTextField = "Nombre";
            drl_finca.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BovinoController bo = new BovinoController(null,Drop_Categoria.SelectedItem.Text, fechai.Value.ToString(), marca.Value.ToString(), raza.Value.ToString(), edad.Value.ToString(), peso.Value.ToString(),null,null,
                    ((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString(),drl_finca.SelectedValue);
                bo.registrarbovino(bo.bov);


            }
            catch (Exception ex)
            {

            }

        }
    }
}