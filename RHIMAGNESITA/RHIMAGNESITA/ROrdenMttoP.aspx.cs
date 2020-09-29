using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using NPOI.XSSF.UserModel;
using NPOI.SS.UserModel;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Image = iTextSharp.text.Image;
using System.Data;

public partial class ROrdenMttoP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["rol"].ToString() != "Tecnico" && Session["rol"].ToString() != "Soldador")
        {
            Response.Redirect("~/ErrorTS.aspx");
        }*/
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)sqlOP.Select(DataSourceSelectArguments.Empty)).Table;


        lblIdOp.Text = Session["idOrdenMttoP"].ToString();
        lblNumerodeOrden.Text = tblDatos.Rows[0][1].ToString();
        lblDisciplinaR.Text = tblDatos.Rows[0][2].ToString();
        lblFechaIn.Text = tblDatos.Rows[0][3].ToString();
        lblHoraIn.Text = tblDatos.Rows[0][4].ToString();
        lblFechaFn.Text = tblDatos.Rows[0][5].ToString();
        lblHoraFn.Text = tblDatos.Rows[0][6].ToString();
        cmbEjecucionOr.Text = tblDatos.Rows[0][7].ToString();
        lblTrabajoIER.Text = tblDatos.Rows[0][8].ToString();
        txtObservaciones.Text = tblDatos.Rows[0][9].ToString();
        lblRevision.Text = tblDatos.Rows[0][10].ToString();
        lblRPlanificicacion.Text = tblDatos.Rows[0][11].ToString();
        lblReporteAVS.Text = tblDatos.Rows[0][12].ToString();
    
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {

        clOrdenMttoPE objOrdenMttoPE = new clOrdenMttoPE();
  
        objOrdenMttoPE.Ejecutado = cmbEjecucionOr.Text;
        objOrdenMttoPE.Observaciones = txtObservaciones.Text;
   

        clOrdenMttoP objOrdenMttoP = new clOrdenMttoP();
        int resultsql = objOrdenMttoP.mtdActualizarOrdenMttoP2(objOrdenMttoPE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos actualizados de la Orden de Mtto Preventiva!.');window.location.href='ListaOP.aspx'</script>");
        }
    }

    protected void btnDescargarExcel_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        //dt = dtDatosROMPExcel();
        Stream s = DataTableToExcel(dt);
        if (s != null)
        {
            MemoryStream ms = s as MemoryStream;
            Response.AddHeader("Content-Disposition", string.Format("attachment;filename=" + HttpUtility.UrlEncode("Datos_Orden_Mantenimiento_Preventiva_Asignada") + ".xlsx"));
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Length", ms.ToArray().Length.ToString());
            Response.BinaryWrite(ms.ToArray());
            Response.Flush();
            ms.Close();
            ms.Dispose();
        }
    }
    public Stream DataTableToExcel(DataTable dt)
    {
        XSSFWorkbook workbook = new XSSFWorkbook();
        MemoryStream ms = new MemoryStream();
        ISheet sheet = workbook.CreateSheet("nombrex");
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
        //dt = metododelatabla();
        if (dt.Rows.Count > 0)
        {
            document.Open();
            Font fontTitle = FontFactory.GetFont(FontFactory.COURIER_BOLD, 25);
            Font font9 = FontFactory.GetFont(FontFactory.TIMES, 9);
            document.SetMargins(1f, 1f, 1f, 1f);

            BaseFont SourceSans = BaseFont.CreateFont();
            iTextSharp.text.Font _standardFont = new iTextSharp.text.Font(SourceSans, 8, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);

            PdfPTable table = new PdfPTable(dt.Columns.Count);
            document.Add(new Paragraph(15, "Datos de la Orden Mantenimiento Preventiva Asignada", fontTitle));
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
        Response.AddHeader("content-disposition", "attachment;filename=Datos_Orden_Mantenimiento_Preventiva_Asignada" + ".pdf");
        HttpContext.Current.Response.Write(document);
        Response.Flush();
        Response.End();
    }
}