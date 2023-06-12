using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;
using System.Text;

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

        private String encrypt(String pass)
        {
            if (pass == null)
            {
                return null;
            }
            String result = String.Empty;
            byte[] encrypted = System.Text.Encoding.UTF8.GetBytes(pass);
            result = Convert.ToBase64String(encrypted);
            return result;
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string usuario = txtUser.Value;
            string contrasena = txtPass.Value;
            String encriptada = encrypt(contrasena);

            string cadena = "Data Source=ADRIAN ;Initial Catalog=curso;Integrated Security=True; ";

            if (ValidateCredentials(usuario, encriptada, cadena))
            {
                Session["UserID"] = usuario;
                Response.Redirect("WTipoTramite.aspx");
            }
            else
            {
                Response.Write("Credenciales inválidas");
            }
        }

        private bool ValidateCredentials(String usuario, String contrasena, String cadenaConexion)
        {            
            bool credentialsValid = false;
            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                string query = "SELECT COUNT(*) FROM usuarios WHERE username = @Usuario AND password = @Contrasena";
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