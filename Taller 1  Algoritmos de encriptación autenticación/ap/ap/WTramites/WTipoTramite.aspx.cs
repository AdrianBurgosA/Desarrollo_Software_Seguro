using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//----------enlace de capas -----------------------
//-------- desde la capa web enlazar con otras capas ------
using DataAccess;
using LogicaNegocio;
//------------referencias con la base de datos SQLServer -------
//---------- proveedores de datos = acceso BASE DATOS ------------------
using System.Data;
using System.Data.SqlClient;

namespace WTramites
{
    
    public partial class WTipoTramite : System.Web.UI.Page
    {
        //--------------atributos de la Clase --------------------
        private Conexion conexion = new Conexion();
        private CTipoTramite tipotramite = new CTipoTramite();
        private string  vtipotramite="tipo", vestado="activo";
        private Int32 vcodigo=0;

        //------------constructores --------------
        public WTipoTramite()
        {
            obtenerDatosFormulario();
        }
        //-----------metodos de la Clase------------------
        public void limpiarFormulario()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNota.Text = "";
        }
        public void obtenerDatosFormulario()
        {
            //vcodigo = Convert.ToInt32(txtCodigo.Text);
            //vtipotramite = txtTipoTramite.Text;
            //vestado = txtEstado.Text.ToString();
        }
            protected void Page_Load(object sender, EventArgs e)
        {

        }

        //-------------BOTON GUARDAR --------------------
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string bandera = "";
            try
            {
                obtenerDatosFormulario();
                bandera=tipotramite.guardarTipoTramite(txtCedula.Text,
                    txtNombre.Text, txtApellido.Text, Convert.ToInt32(txtNota.Text));
                lblMensajes.Text = lblMensajes.Text + bandera;
                limpiarFormulario();
                llenarGridTipoTramite();
            }
            catch(Exception ex)
            {
                lblMensajes.Text =  " grabacion NO realizada :  " + ex.Message;
            }
            
        }//--------- FIN BOTON GUARDAR--------

        //--------BOTON ACTUALIZAR --------------------
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string bandera = "";
            try
            {
                obtenerDatosFormulario();
                bandera = tipotramite.actualizarTipoTramite(txtCedula.Text ,Convert.ToInt32(txtNota.Text));
                lblMensajes.Text = lblMensajes.Text + bandera;
                limpiarFormulario();
                llenarGridTipoTramite();
            }
            catch (Exception ex)
            {
                lblMensajes.Text = " ACTUALIZACION NO realizada :  " + ex.Message;
            }

        }//----- FIN BOTON ACTUALIZAR-----

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string bandera;
            try
            {
                obtenerDatosFormulario();
                bandera = tipotramite.eliminar(txtCedula.Text);
                
                lblMensajes.Text = lblMensajes.Text + bandera;
                limpiarFormulario();
                llenarGridTipoTramite();
            }
            catch (Exception ex)
            {
                lblMensajes.Text = " REGISTRO NO fue eliminado :  " + ex.Message;
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            llenarGridTipoTramite();
        }

        protected void btnGuardarSOAP_Click(object sender, EventArgs e)
        {

        }

        //--------BOTON llenarGrid -----------------------
        public void llenarGridTipoTramite()
        {
            conexion.conectar();
            //con.Open();
            SqlCommand cmd = new SqlCommand("select * from estudiantes", conexion.conectar());
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            grdtipoTramite.DataSource = dt;
            grdtipoTramite.DataBind();
            //cn.Close();
        }

    }
}