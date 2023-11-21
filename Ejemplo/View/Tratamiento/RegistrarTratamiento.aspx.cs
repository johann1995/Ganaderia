using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Tratamiento
{
    public partial class RegistrarTratamiento : System.Web.UI.Page
    {
        string msj;
        FincaController fin = new FincaController();
        BovinoController bo = new BovinoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                CargarFinca();

                bo.MostrarBovinos();

                list_bovino.DataSource = bo.MostrarBovinos();
                list_bovino.DataBind();


            }
        }
        public void CargarFinca()
        {
            FincaController fn = new FincaController();
            lista_f.DataSource = fn.buscarFINCA(((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
            lista_f.DataValueField = "idFinca";
            lista_f.DataTextField = "Nombre";
            lista_f.DataBind();
        }
        protected void lista_SelectedIndexChanged(object sender, EventArgs e)
        {

            list_bovino.DataSource = bo.buscarBovinoS(lista_f.SelectedValue);
            list_bovino.DataBind();
        }

        protected void Registrar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            bovinofk.Value = Argument[0];
            
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TratamientoController ta = new TratamientoController(null, Drop_tratamiento.SelectedItem.Text,fechat.Value,bovinofk.Value);
                if (ta.registrartratamiento(ta.tra))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Tratamiento/RegistrarTratamiento.aspx");

                }
                else
                {
                    msj = "Error! algo salio mal";
                    Response.Redirect("~/Views/Principal/Registrar.aspx");
                }
            }
            catch (Exception)
            {
                Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
            }
        }
    }




    }
