﻿using System;
using System.Collections.Generic;
using System.Data;
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

public partial class VerDatRAVS : System.Web.UI.Page
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
        tblDatos = ((DataView)SqldsRAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdR.Text = Session["idReporteAVS"].ToString();
        lblNumeroR.Text = tblDatos.Rows[0][1].ToString();
        txtTitulo.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        txtFechaReporte.Text = tblDatos.Rows[0][4].ToString();
        lblIdE.Text = tblDatos.Rows[0][5].ToString();
        lblIdU.Text = tblDatos.Rows[0][6].ToString();
    }
    protected void imgbtnAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ListaRAVS.aspx");
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        clReporteAveriaServicioE objclReporteAveriaServicioE = new clReporteAveriaServicioE();
        objclReporteAveriaServicioE.IdReporteAS = int.Parse(lblIdR.Text);
        objclReporteAveriaServicioE.Titulo = txtTitulo.Text;
        objclReporteAveriaServicioE.Descripcion = txtDescripcion.Text;
        objclReporteAveriaServicioE.FechaReporte = txtFechaReporte.Text;
      

        clReporteAveriaServicio objEjecucionM = new clReporteAveriaServicio();
        int resultsql = objEjecucionM.mtdActualizarReporteAS(objclReporteAveriaServicioE);

        if (resultsql > 0)
        {
            //enviar mensaje 
            Response.Write("<script>alert('Datos Actualizados de Reporte de Averia o Servicio!.');window.location.href='ListaRAVS.aspx'</script>");
        }
    }

    protected void btnDescargarExcel_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = dtDatosRAVSEXcel();
        Stream s = DataTableToExcel(dt);
        if (s != null)
        {
            MemoryStream ms = s as MemoryStream;
            Response.AddHeader("Content-Disposition", string.Format("attachment;filename=" + HttpUtility.UrlEncode("Datos_Reporte_Averia_Servicio") + ".xlsx"));
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
    public DataTable dtDatosRAVSEXcel()
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsRAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdR.Text = Session["idReporteAVS"].ToString();
        lblNumeroR.Text = tblDatos.Rows[0][1].ToString();
        txtTitulo.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        txtFechaReporte.Text = tblDatos.Rows[0][4].ToString();
        lblIdE.Text = tblDatos.Rows[0][5].ToString();
        lblIdU.Text = tblDatos.Rows[0][6].ToString();

        return tblDatos;
    }

    protected void btnDescargarPdf_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        Document document = new Document(PageSize.LETTER);
        PdfWriter writer = PdfWriter.GetInstance(document, HttpContext.Current.Response.OutputStream);
        dt = dtDatosRAVSPDF();
        if (dt.Rows.Count > 0)
        {
            document.Open();
            Font fontTitle = FontFactory.GetFont(FontFactory.COURIER_BOLD, 25);
            Font font9 = FontFactory.GetFont(FontFactory.TIMES, 9);
            document.SetMargins(1f, 1f, 1f, 1f);

            BaseFont SourceSans = BaseFont.CreateFont();
            iTextSharp.text.Font _standardFont = new iTextSharp.text.Font(SourceSans, 8, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);

            PdfPTable table = new PdfPTable(dt.Columns.Count);
            document.Add(new Paragraph(15, "Datos del Reporte Averia/Servicio", fontTitle));
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
        Response.AddHeader("content-disposition", "attachment;filename=Datos_Reporte_Averia_Servicio" + ".pdf");
        HttpContext.Current.Response.Write(document);
        Response.Flush();
        Response.End();
    }
    public DataTable dtDatosRAVSPDF()
    {
        DataTable tblDatos = new DataTable();
        tblDatos = ((DataView)SqldsRAVS.Select(DataSourceSelectArguments.Empty)).Table;

        lblIdR.Text = Session["idReporteAVS"].ToString();
        lblNumeroR.Text = tblDatos.Rows[0][1].ToString();
        txtTitulo.Text = tblDatos.Rows[0][2].ToString();
        txtDescripcion.Text = tblDatos.Rows[0][3].ToString();
        txtFechaReporte.Text = tblDatos.Rows[0][4].ToString();
        lblIdE.Text = tblDatos.Rows[0][5].ToString();
        lblIdU.Text = tblDatos.Rows[0][6].ToString();

        return tblDatos;
    }
}