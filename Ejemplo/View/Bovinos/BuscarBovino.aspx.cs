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
    public partial class BuscarBovino : System.Web.UI.Page
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

        protected void Modificar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            IdBov.Value = Argument[0];
            Drop_Categoria.SelectedItem.Text = Argument[1];
            fechai.Value = Convert.ToDateTime(Argument[2]).ToString("yyyy-MM-dd");
            marca.Value = Argument[3];
            raza.Value = Argument[4];
            edad.Value = Argument[5];
            peso.Value = Argument[6];
            PesoV.Value = Argument[7];
            fechaV.Value = Argument[8];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }
        protected void Eliminar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            bovinoid.Value = Argument[0];
            DropDownList2.SelectedItem.Text = Argument[1];
            marcab.Value = Argument[2];
            
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('2')", true);
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BovinoController bo = new BovinoController(IdBov.Value.ToString(), Drop_Categoria.SelectedItem.Text, fechai.Value.ToString(), marca.Value.ToString(), raza.Value.ToString(), edad.Value.ToString(), peso.Value.ToString(), PesoV.Value.ToString(), fechaV.Value.ToString(), null, null);
                if (bo.ModificarBovinos(bo.bov))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Bovinos/BuscarBovino.aspx");

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

        protected void boton4_Click(object sender, EventArgs e)
        {
            try
            {
                BovinoController bo = new BovinoController(bovinoid.Value, DropDownList2.SelectedItem.Text,marcab.Value,null,null,null,null,null,null,null,null);
                if (bo.EliminarBovino(bovinoid.Value))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Bovinos/BuscarBovino.aspx");

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