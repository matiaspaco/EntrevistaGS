using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;






namespace ProyectoPrueba.Web.UControls
{
    public partial class CreateInterview : System.Web.UI.UserControl
    {
        public string styleClassFechaEntrevista = "form-group";
        public string styleClassNombre = "form-group";
        public string styleClassApellido = "form-group";
        public string styleClassDNI = "form-group";
        public string styleClassValoracion = "form-group";
        public string styleClassTelefono = "form-group";
        public string styleClasschkAsistencia = "form-group";

        protected void Page_Load(object sender, EventArgs e)
        {
            //ScriptManager.GetCurrent(this.Page).RegisterPostBackControl(this.txtFechaAlta);

            //string emailProveedor = ((MembershipUser)Session["UserMembership"]).Email;
            //tbl_Proveedore TP = new ProveedoresBC().GetbyEmail(emailProveedor);

            //Comp = new Sabre.Business.CRUD.ComprobantesBC().GetByProveedor(TP.Id);

            //Repeater1.DataSource = Comp;
            //Repeater1.DataBind();

        }
        protected void RPMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                //List<tbl_Comprobante> Comp = new List<tbl_Comprobante>();
                //tbl_Comprobante comprobante = ((tbl_Comprobante)e.Item.DataItem);
                //string id = ((tbl_Comprobante)e.Item.DataItem).ID.ToString();



                //((Label)e.Item.FindControl("lblTotal")).Text = comprobante.Total.ToString().Replace('.', ',');

                //if (comprobante.Pagado == null && comprobante.EnviarParaPago == null)
                //{
                //    ((Label)e.Item.FindControl("lblEstadoDePago")).Text = "No";
                //}
                //else if (comprobante.EnviarParaPago == true && comprobante.Pagado == true)
                //{
                //    ((Label)e.Item.FindControl("lblEstadoDePago")).Text = "Si";
                //}
                //else if (comprobante.EnviarParaPago == true && comprobante.Pagado == null)
                //{
                //    ((Label)e.Item.FindControl("lblEstadoDePago")).Text = "PP";
                //}

                //if (Session["UserRol"] != null)
                //{

                //}





            }



        }
    }


        

        //protected void ddlConsorcio_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (ddlConsorcio.SelectedItem.Value != "0")
        //    {
        //        FillComprobantes();
        //        Session["ddlConsorcio"] = ddlConsorcio.SelectedValue;

        //    }


        //}

        //private void FillComprobantes()
        //{
        //    List<tbl_Comprobante> Comp = new Sabre.Business.CRUD.ComprobantesBC().GetbyIdConsorcio(Convert.ToInt32(ddlConsorcio.SelectedValue));

        //    Repeater1.DataSource = Comp;
        //    Repeater1.DataBind();
        //}

        //protected void Page_Load(object sender, EventArgs e)
        //{

        //    if (!IsPostBack)//un switch para determinado Rol que llame a un metodo/todos los comprobantes por el Rol del ID que se emplea
        //    {

        //        List<tbl_Consorcio> consorcios = new ConsorcioBC().GetAll();
        //        ddlConsorcio.DataSource = consorcios;
        //        ddlConsorcio.DataTextField = "RazonSocial";
        //        ddlConsorcio.DataValueField = "Id";

        //        ddlConsorcio.DataBind();

        //        ddlConsorcio.Items.Insert(0, new ListItem("Seleccionar...", "0"));



        //        if (Session["UserRol"] != null)
        //        {

        //            List<tbl_Comprobante> Comp = new List<tbl_Comprobante>();

        //            if (((string[])Session["UserRol"]).Contains("Proveedor"))
        //            {
        //                string emailProveedor = ((MembershipUser)Session["UserMembership"]).Email;
        //                tbl_Proveedore TP = new ProveedoresBC().GetbyEmail(emailProveedor);

        //                Comp = new Sabre.Business.CRUD.ComprobantesBC().GetByProveedor(TP.Id);

        //                Repeater1.DataSource = Comp;
        //                Repeater1.DataBind();
        //            }
        //            else
        //            {
        //                Repeater1.DataSource = Comp;
        //                Repeater1.DataBind();
        //            }







        //        }


        //        if (Session["ddlConsorcio"].ToString() != "")
        //        {
        //            ddlConsorcio.SelectedValue = Session["ddlConsorcio"].ToString();
        //            FillComprobantes();
        //        }
        //    }
        //}


    }
