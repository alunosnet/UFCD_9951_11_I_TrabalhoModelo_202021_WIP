using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Alunos
{
    public partial class gerir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //é executada para cada linha da grelha
            //e para cada coluna
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                if(dr["fotografia"] is DBNull == false)
                {
                    string imagem="data:image/jpg;base64, "+
                        Convert.ToBase64String((byte[])dr["fotografia"]);
                    (e.Row.FindControl("fotografia") as Image).ImageUrl = imagem;
                }
            }
        }
    }
}