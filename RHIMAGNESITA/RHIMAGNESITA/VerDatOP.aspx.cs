using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using NPOI.XSSF.UserModel;
using NPOI.SS.UserModel;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Image = iTextSharp.text.Image;
using NPOI.HSSF.Record;

public partial class VerDatOP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["rol"].ToString() != "Admin" && Session["rol"].ToString() != "Supervisor" && Session["rol"].ToString() != "Planificador")
        {
            Response.Redirect("~/ErrorASP.aspx");
        }*/
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsOrdenMttoP.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOP.Text = Session["idOrdenMttoP"].ToString();
        lblNumero.Text = tblDatos.Rows[0][1].ToString();
        txtDisciplinaP.Text = tblDatos.Rows[0][2].ToString();
        txtFechaIP.Text = tblDatos.Rows[0][3].ToString();
        txtHoraIP.Text = tblDatos.Rows[0][4].ToString();
        txtFechaFP.Text = tblDatos.Rows[0][5].ToString();
        txtHoraFP.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecutadoP.Text = tblDatos.Rows[0][7].ToString();
        cmbTIXEP.Text = tblDatos.Rows[0][8].ToString();
        txtObservacionesP.Text = tblDatos.Rows[0][9].ToString();
        cmbRevisadoP.Text = tblDatos.Rows[0][10].ToString();
        lblIdP.Text = tblDatos.Rows[0][11].ToString();
        lblidRAVS.Text = tblDatos.Rows[0][12].ToString();
        lblIdU.Text = tblDatos.Rows[0][13].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaOP.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
        objOrdenMttoPE.IdOrdenMttoP = int.Parse(lblIdOP.Text);
        objOrdenMttoPE.Disciplina = txtDisciplinaP.Text;
        objOrdenMttoPE.FechaInicio = txtFechaIP.Text;
        objOrdenMttoPE.HoraInicio = txtHoraIP.Text;
        objOrdenMttoPE.FechaFinal = txtFechaFP.Text;
        objOrdenMttoPE.HoraFinal = txtHoraFP.Text;
        objOrdenMttoPE.Ejecutado = cmbEjecutadoP.Text;
        objOrdenMttoPE.TrabajoIE = cmbTIXEP.Text;
        objOrdenMttoPE.Observaciones = txtObservacionesP.Text;
        objOrdenMttoPE.Revisado = cmbRevisadoP.Text;


        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdActualizarOrdenMttoP(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Preventiva!.');window.location.href='ListaOP.aspx'</script>");
        }
    }

    protected void btnDescargarExcel_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        dt = dtDatos();
        Stream s = DataTableToExcel(dt);
        if (s != null)
        {
            MemoryStream ms = s as MemoryStream;
            Response.AddHeader("Content-Disposition", string.Format("attachment;filename=" + HttpUtility.UrlEncode("Datos_Orden_de_Mantenimiento_Preventiva") + ".xlsx"));
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Length", ms.ToArray().Length.ToString());
            Response.BinaryWrite(ms.ToArray());
            Response.Flush();
            ms.Close();
            ms.Dispose();
        }

    }
    public DataTable dtDatos()
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsOrdenMttoP.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOP.Text = Session["idOrdenMttoP"].ToString();
        lblNumero.Text = tblDatos.Rows[0][1].ToString();
        txtDisciplinaP.Text = tblDatos.Rows[0][2].ToString();
        txtFechaIP.Text = tblDatos.Rows[0][3].ToString();
        txtHoraIP.Text = tblDatos.Rows[0][4].ToString();
        txtFechaFP.Text = tblDatos.Rows[0][5].ToString();
        txtHoraFP.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecutadoP.Text = tblDatos.Rows[0][7].ToString();
        cmbTIXEP.Text = tblDatos.Rows[0][8].ToString();
        txtObservacionesP.Text = tblDatos.Rows[0][9].ToString();
        cmbRevisadoP.Text = tblDatos.Rows[0][10].ToString();
        lblIdP.Text = tblDatos.Rows[0][11].ToString();
        lblidRAVS.Text = tblDatos.Rows[0][12].ToString();
        lblIdU.Text = tblDatos.Rows[0][13].ToString();
    

        return tblDatos;
    }

        public Stream DataTableToExcel(DataTable dt)
        {
            XSSFWorkbook workbook = new XSSFWorkbook();
            MemoryStream ms = new MemoryStream();
            ISheet sheet = workbook.CreateSheet("Datos");
            XSSFRow headerRow = headerRow = (XSSFRow)sheet.CreateRow(0);
            try
            {
                foreach (DataColumn column in dt.Columns)
                    headerRow.CreateCell(column.Ordinal).SetCellValue(column.ColumnName);
                int rowIndex = 1;
                foreach (DataRow row in dt.Rows)
                {
                    XSSFRow dataRow = (XSSFRow)sheet.CreateRow(rowIndex);
                    foreach (DataColumn column in dt.Columns)
                        dataRow.CreateCell(column.Ordinal).SetCellValue(row[column].ToString());
                    ++rowIndex;
                }
                for (int i = 0; i <= dt.Columns.Count; ++i)
                    sheet.AutoSizeColumn(i);
                workbook.Write(ms);
                ms.Flush();
            }
            catch (Exception ex)
            {

                return null;
            }
            finally
            {
                ms.Close();
                sheet = null;
                headerRow = null;
                workbook = null;
            }
            return ms;
        }


    protected void btnDescargarPdf_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        Document document = new Document(PageSize.LETTER);
        PdfWriter writer = PdfWriter.GetInstance(document, HttpContext.Current.Response.OutputStream);
        dt = dtDatospdf();
        if (dt.Rows.Count > 0)
        {
            document.Open();
            Font fontTitle = FontFactory.GetFont(FontFactory.COURIER_BOLD, 25);
            Font font9 = FontFactory.GetFont(FontFactory.TIMES, 9);
            document.SetMargins(1f, 1f, 1f, 1f);

            BaseFont SourceSans = BaseFont.CreateFont();
            iTextSharp.text.Font _standardFont = new iTextSharp.text.Font(SourceSans, 8, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);

            PdfPTable table = new PdfPTable(dt.Columns.Count);
            document.Add(new Paragraph(15, "Datos de la Orden de Mantenimiento Preventiva", fontTitle));
            document.Add(new Chunk("\n"));
            Image logo = Image.GetInstance(System.Web.HttpContext.Current.Server.MapPath("~/Vista/PgPrin/img/apple-touch-icon.png"));
            logo.ScalePercent(24f);
            logo.SetAbsolutePosition(0f, 0f);
            document.Add(logo);
            document.Add(Chunk.NEWLINE);

            float[] widths = new float[dt.Columns.Count];
            for (int i = 0; i < dt.Columns.Count; i++)
                widths[i] = 2f;

            table.SetWidths(widths);
            table.WidthPercentage = 110;

            PdfPCell cell = new PdfPCell(new Phrase("columns"));
            cell.Colspan = dt.Columns.Count;

            foreach (DataColumn c in dt.Columns)
            {
                table.AddCell(new Phrase(c.ColumnName, font9));
            }

            foreach (DataRow r in dt.Rows)
            {
                if (dt.Rows.Count > 0)
                {
                    for (int h = 0; h < dt.Columns.Count; h++)
                    {
                        table.AddCell(new Phrase(r[h].ToString(), font9));
                    }
                }
            }
            document.Add(table);
        }
        document.Close();

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Datos_Orden_de_Mantenimiento_Preventiva" + ".pdf");
        HttpContext.Current.Response.Write(document);
        Response.Flush();
        Response.End();
    }
    public DataTable dtDatospdf()
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsOrdenMttoP.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdOP.Text = Session["idOrdenMttoP"].ToString();
        lblNumero.Text = tblDatos.Rows[0][1].ToString();
        txtDisciplinaP.Text = tblDatos.Rows[0][2].ToString();
        txtFechaIP.Text = tblDatos.Rows[0][3].ToString();
        txtHoraIP.Text = tblDatos.Rows[0][4].ToString();
        txtFechaFP.Text = tblDatos.Rows[0][5].ToString();
        txtHoraFP.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecutadoP.Text = tblDatos.Rows[0][7].ToString();
        cmbTIXEP.Text = tblDatos.Rows[0][8].ToString();
        txtObservacionesP.Text = tblDatos.Rows[0][9].ToString();
        cmbRevisadoP.Text = tblDatos.Rows[0][10].ToString();
        lblIdP.Text = tblDatos.Rows[0][11].ToString();
        lblidRAVS.Text = tblDatos.Rows[0][12].ToString();
        lblIdU.Text = tblDatos.Rows[0][13].ToString();


        return tblDatos;
    }
}
