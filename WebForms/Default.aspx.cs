using System;
using System.Text;
using System.Web.Security;
using System.Web.UI;

namespace WebForms
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblErr.Text = string.Empty;
        }

        protected void btnEncrypt_Click(object sender, EventArgs e)
        {
            try
            {
                txtResult.Text = string.Empty;
                txtResult.Text = Convert.ToBase64String(MachineKey.Protect(Encoding.UTF8.GetBytes(txtValue.Text.Trim()), txtPurpose.Text.Trim()));
            }
            catch (Exception ex)
            {
                lblErr.Text = ex.Message;
            }
        }

        protected void btnDecrypt_Click(object sender, EventArgs e)
        {
            try
            {
                txtResult.Text = string.Empty;
                txtResult.Text = Encoding.UTF8.GetString(MachineKey.Unprotect(Convert.FromBase64String(txtValue.Text.Trim()), txtPurpose.Text.Trim()));
            }
            catch (Exception ex)
            {
                lblErr.Text = ex.Message;
            }
        }
    }

    [Serializable]
    class SessionData
    {
        public SessionData(string key, string value)
        {
            Key = key;
            Value = value;
        }

        public string Key { get; set; }
        public string Value { get; set; }
    }

    class Configuration
    {
        public Configuration(string source, string key, string value)
        {
            Source = source;
            Key = key;
            Value = value;
        }

        public string Source { get; set; }
        public string Key { get; set; }
        public string Value { get; set; }
    }
}