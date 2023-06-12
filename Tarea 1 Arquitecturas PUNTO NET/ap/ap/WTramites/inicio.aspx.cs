using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

namespace WTramites
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (IsUserLoggedIn())
                {
                    Response.Redirect("WTipoTramite.aspx");
                }
            }
        }

        private bool IsUserLoggedIn()
        {
            return Session["UserID"] != null;
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Value;
            string contrasena = txtContrasena.Value;

            string cadena = "Data Source=DESKTOP-S4BP8M6\\SQLEXPRESS;Initial Catalog=Automovil;Integrated Security=True; ";

            if (ValidateCredentials(usuario, contrasena, cadena))
            {
                Session["UserID"] = usuario;
                Response.Redirect("WTipoTramite.aspx");
            }
            else
            {
                Response.Write("Credenciales inválidas");
            }
        }

        private bool ValidateCredentials(string usuario, string contrasena, string cadenaConexion)
        {
            bool credentialsValid = false;

            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                string query = "SELECT COUNT(*) FROM usuarios WHERE usuario = @Usuario AND contrasena = @Contrasena";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Usuario", usuario);
                command.Parameters.AddWithValue("@Contrasena", contrasena);

                connection.Open();
                int count = (int)command.ExecuteScalar();
                connection.Close();

                credentialsValid = (count > 0);
            }

            return credentialsValid;
        }

    }
}