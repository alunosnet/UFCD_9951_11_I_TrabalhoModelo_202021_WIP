using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Alunos
{
    public partial class adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            //referencia para o fileupload
            FileUpload fotografia = FormView1.FindControl("FileUpload1") as FileUpload;
            if (fotografia.HasFile)
                e.Values["fotografia"] = fotografia.FileBytes;
            else //TODO: bug isto dá erro!!!!
                e.Values["fotografia"] = fotografia.FileBytes;
        }
    }
}