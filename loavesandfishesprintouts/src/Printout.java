import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.pdfsam.console.ConsoleClient;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.AcroFields;
import com.itextpdf.text.pdf.AcroFields.FieldPosition;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;


public class Printout {


	static String DB_URL = "jdbc:mysql://localhost:3306/pantry?noAccessToProcedureBodies=true";
    static String DB_USER = "pantry";
    static String DB_PASSWORD = "pantry0807";
    //static String SQL = "{call GetHistoryPages}";
    static String SQL = "{call GetHistoryPagesOver10}";
    /*static String SQL = "SELECT ID, " +
			  "'1625-3' AS AgencyNumber," + 
			  "'Loaves & Fishes Food Pantry' AS AgencyName, " +
			  "LastName," + 
			  "FirstName," + 
			  "Address," + 
			  "City," + 
			  "State," + 
			  "Phone," + 
			  "AptNumber," + 
			  "CASE WHEN FoodStamps = 1 THEN 'Yes' ELSE 'No' END AS ListBox," + 
			  "FoodStampAmount," + 
			  "WorkerName AS NameOfWorker," + 
			  "DoB," + 
			  "Zip," + 
			  "Line1_Name," + 
			  "Line1_Age," + 
			  "Line1_Sex," + 
			  "Line1_Income," + 
			  "Line1_Monthly," + 
			  "Line1_Weekly," + 
			  "Line1_BiWeekly," + 
			  "Line1_Yearly," + 
			  "Line1_Medicaid," + 
			  "Line1_TANF," + 
			  "Line1_SSI," + 
			  "Line1_Other," + 
			  "Line2_Name," + 
			  "Line2_Age," + 
			  "Line2_Sex," + 
			  "Line2_Income," + 
			  "Line2_Monthly," + 
			  "Line2_Weekly," + 
			  "Line2_BiWeekly," + 
			  "Line2_Yearly," + 
			  "Line2_Medicaid," + 
			  "Line2_TANF," + 
			  "Line2_SSI," + 
			  "Line2_Other," + 
			  "Line3_Name," + 
			  "Line3_Age," + 
			  "Line3_Sex," + 
			  "Line3_Income," + 
			  "Line3_Monthly," + 
			  "Line3_Weekly," + 
			  "Line3_BiWeekly," + 
			  "Line3_Yearly," + 
			  "Line3_Medicaid," + 
			  "Line3_TANF," + 
			  "Line3_SSI," + 
			  "Line3_Other," + 
			  "Line4_Name," + 
			  "Line4_Age," + 
			  "Line4_Sex," + 
			  "Line4_Income," + 
			  "Line4_Monthly," + 
			  "Line4_Weekly," + 
			  "Line4_BiWeekly," + 
			  "Line4_Yearly," + 
			  "Line4_Medicaid," + 
			  "Line4_TANF," + 
			  "Line4_SSI," + 
			  "Line4_Other," + 
			  "Line5_Name," + 
			  "Line5_Age," + 
			  "Line5_Sex," + 
			  "Line5_Income," + 
			  "Line5_Monthly," + 
			  "Line5_Weekly," + 
			  "Line5_BiWeekly," + 
			  "Line5_Yearly," + 
			  "Line5_Medicaid," + 
			  "Line5_TANF," + 
			  "Line5_SSI," + 
			  "Line5_Other," + 
			  "Line6_Name," + 
			  "Line6_Age," + 
			  "Line6_Sex," + 
			  "Line6_Income," + 
			  "Line6_Monthly," + 
			  "Line6_Weekly," + 
			  "Line6_BiWeekly," + 
			  "Line6_Yearly," + 
			  "Line6_Medicaid," + 
			  "Line6_TANF," + 
			  "Line6_SSI," + 
			  "Line6_Other," + 
			  "Line7_Name," + 
			  "Line7_Age," + 
			  "Line7_Sex," + 
			  "Line7_Income," + 
			  "Line7_Monthly," + 
			  "Line7_Weekly," + 
			  "Line7_BiWeekly," + 
			  "Line7_Yearly," + 
			  "Line7_Medicaid," + 
			  "Line7_TANF," + 
			  "Line7_SSI," + 
			  "Line7_Other," + 
			  "Line8_Name," + 
			  "Line8_Age," + 
			  "Line8_Sex," + 
			  "Line8_Income," + 
			  "Line8_Monthly," + 
			  "Line8_Weekly," + 
			  "Line8_BiWeekly," + 
			  "Line8_Yearly," + 
			  "Line8_Medicaid," + 
			  "Line8_TANF," + 
			  "Line8_SSI," + 
			  "Line8_Other," + 
			  "Line9_Name," + 
			  "Line9_Age," + 
			  "Line9_Sex," + 
			  "Line9_Income," + 
			  "Line9_Monthly," + 
			  "Line9_Weekly," + 
			  "Line9_BiWeekly," + 
			  "Line9_Yearly," + 
			  "Line9_Medicaid," + 
			  "Line9_TANF," + 
			  "Line9_SSI," + 
			  "Line9_Other," + 
			  "Line10_Name," + 
			  "Line10_Age," + 
			  "Line10_Sex," + 
			  "Line10_Income," + 
			  "Line10_Monthly," + 
			  "Line10_Weekly," + 
			  "Line10_BiWeekly," + 
			  "Line10_Yearly," + 
			  "Line10_Medicaid," + 
			  "Line10_TANF," + 
			  "Line10_SSI," + 
			  "Line10_Other," + 
			  "Line11_Name," + 
			  "Line11_Age," + 
			  "Line11_Sex," + 
			  "Line11_Income," + 
			  "Line11_Monthly," + 
			  "Line11_Weekly," + 
			  "Line11_BiWeekly," + 
			  "Line11_Yearly," + 
			  "Line11_Medicaid," + 
			  "Line11_TANF," + 
			  "Line11_SSI," + 
			  "Line11_Other," + 
			  "Line12_Name," + 
			  "Line12_Age," + 
			  "Line12_Sex," + 
			  "Line12_Income," + 
			  "Line12_Monthly," + 
			  "Line12_Weekly," + 
			  "Line12_BiWeekly," + 
			  "Line12_Yearly," + 
			  "Line12_Medicaid," + 
			  "Line12_TANF," + 
			  "Line12_SSI," + 
			  "Line12_Other," + 
			  "Line13_Name," + 
			  "Line13_Age," + 
			  "Line13_Sex," + 
			  "Line13_Income," + 
			  "Line13_Monthly," + 
			  "Line13_Weekly," + 
			  "Line13_BiWeekly," + 
			  "Line13_Yearly," + 
			  "Line13_Medicaid," + 
			  "Line13_TANF," + 
			  "Line13_SSI," + 
			  "Line13_Other," + 
			  "Line14_Name," + 
			  "Line14_Age," + 
			  "Line14_Sex," + 
			  "Line14_Income," + 
			  "Line14_Monthly," + 
			  "Line14_Weekly," + 
			  "Line14_BiWeekly," + 
			  "Line14_Yearly," + 
			  "Line14_Medicaid," + 
			  "Line14_TANF," + 
			  "Line14_SSI," + 
			  "Line14_Other," + 
			  "Line15_Name," + 
			  "Line15_Age," + 
			  "Line15_Sex," + 
			  "Line15_Income," + 
			  "Line15_Monthly," + 
			  "Line15_Weekly," + 
			  "Line15_BiWeekly," + 
			  "Line15_Yearly," + 
			  "Line15_Medicaid," + 
			  "Line15_TANF," + 
			  "Line15_SSI," + 
			  "Line15_Other," + 
			  "Line16_Name," + 
			  "Line16_Age," + 
			  "Line16_Sex," + 
			  "Line16_Income," + 
			  "Line16_Monthly," + 
			  "Line16_Weekly," + 
			  "Line16_BiWeekly," + 
			  "Line16_Yearly," + 
			  "Line16_Medicaid," + 
			  "Line16_TANF," + 
			  "Line16_SSI," + 
			  "Line16_Other," + 
			  "Line17_Name," + 
			  "Line17_Age," + 
			  "Line17_Sex," + 
			  "Line17_Income," + 
			  "Line17_Monthly," + 
			  "Line17_Weekly," + 
			  "Line17_BiWeekly," + 
			  "Line17_Yearly," + 
			  "Line17_Medicaid," + 
			  "Line17_TANF," + 
			  "Line17_SSI," + 
			  "Line17_Other," + 
			  "Line18_Name," + 
			  "Line18_Age," + 
			  "Line18_Sex," + 
			  "Line18_Income," + 
			  "Line18_Monthly," + 
			  "Line18_Weekly," + 
			  "Line18_BiWeekly," + 
			  "Line18_Yearly," + 
			  "Line18_Medicaid," + 
			  "Line18_TANF," + 
			  "Line18_SSI," + 
			  "Line18_Other," + 
			  "Line19_Name," + 
			  "Line19_Age," + 
			  "Line19_Sex," + 
			  "Line19_Income," + 
			  "Line19_Monthly," + 
			  "Line19_Weekly," + 
			  "Line19_BiWeekly," + 
			  "Line19_Yearly," + 
			  "Line19_Medicaid," + 
			  "Line19_TANF," + 
			  "Line19_SSI," + 
			  "Line19_Other," + 
			  "Line20_Name," + 
			  "Line20_Age," + 
			  "Line20_Sex," + 
			  "Line20_Income," + 
			  "Line20_Monthly," + 
			  "Line20_Weekly," + 
			  "Line20_BiWeekly," + 
			  "Line20_Yearly," + 
			  "Line20_Medicaid," + 
			  "Line20_TANF," + 
			  "Line20_SSI," + 
			  "Line20_Other," + 
			  "Line21_Name," + 
			  "Line21_Age," + 
			  "Line21_Sex," + 
			  "Line21_Income," + 
			  "Line21_Monthly," + 
			  "Line21_Weekly," + 
			  "Line21_BiWeekly," + 
			  "Line21_Yearly," + 
			  "Line21_Medicaid," + 
			  "Line21_TANF," + 
			  "Line21_SSI," + 
			  "Line21_Other," + 
			  "Signature1Date," + 
			  "Signature2Date," + 
			  "Signature3Date," + 
			  "Signature4Date," + 
			  "Signature5Date," + 
			  "Signature6Date," +
			  "Signature1," + 
			  "Signature2," + 
			  "Signature3," + 
			  "Signature4," + 
			  "Signature5," + 
			  "Signature6" +
			  " FROM Intake INNER JOIN tmpPrintouts ON Intake.ID = tmpPrintouts.OrigID " + 
    			" WHERE Signature1 IS NOT NULL OR Signature2 IS NOT NULL OR Signature3 IS NOT NULL OR Signature4 IS NOT NULL OR Signature5 IS NOT NULL OR Signature6 IS NOT NULL) " + 
    			//" AND Line11_Name IS NULL AND Line12_Name IS NULL AND Line13_Name IS NULL " +
    			" AND NOT(Line11_Name IS NULL AND Line12_Name IS NULL AND Line13_Name IS NULL) " +
    			" ORDER BY LastName ASC, FirstName ASC";*/
    			

    /**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		// TODO Config file
		// TODO Check in to SVN
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2013-Over 10.pdf";
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2013.pdf";
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2015-over10.pdf";
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2015.pdf";
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2016.pdf";
		//String template = "C:\\Documents and Settings\\Andy\\Desktop\\tefape-form\\temptest\\Pantry - Print-2016 - over10.pdf";
		//String template = "C:\\Users\\Owner\\Desktop\\tefape-form\\temptest\\Pantry - Print-2016.pdf";
		String template = "C:\\Users\\Owner\\Desktop\\tefape-form\\temptest\\Pantry - Print-2016 - over10.pdf";
		//showFields(template);System.exit(0);
		//splitFiles();System.exit(0);
		//makePDFSamFileLists(new File("C:\\temp\\fp\\"));System.exit(0);
		//mergePDFs(new File("C:\\temp\\fp\\"));System.exit(0);

		long startTime = System.currentTimeMillis();
		ResultSet rs = runQuery();
		int count = 0;
		while (rs.next()) {
			makePrintout(template, rs, count);
			count++;
		}
		rs.close();
		System.out.println(count + " records done in " + ((System.currentTimeMillis() - startTime)/1000) + " seconds");
		
	}

	public static ResultSet runQuery() throws SQLException {

        Connection con = null;
        CallableStatement st = null;
        ResultSet rs = null;

        con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        st = con.prepareCall(SQL);
        rs = st.executeQuery();

        return rs;
	}
	
	
    public static void makePrintout(String src, ResultSet rs, int count) throws IOException, DocumentException, SQLException, ParseException {
		int id = rs.getInt("ID");

		String[] fields = {
				  "AgencyNumber",
				  "AgencyName",
				  "LastName",
				  "FirstName",
				  "Address",
				  "City",
				  "State",
				  "Phone",
				  "AptNumber",
				  "ListBox",//"FoodStamps",
				  "FoodStampAmount",
				  "NameOfWorker",
				  "DoB",
				  "Zip",
				  "Line1_Name",
				  "Line1_Age",
				  "Line1_Sex",
				  "Line1_Income",
				  "Line1_Monthly",
				  "Line1_Weekly",
				  "Line1_BiWeekly",
				  "Line1_Yearly",
				  "Line1_Medicaid",
				  "Line1_TANF",
				  "Line1_SSI",
				  "Line1_Other",
				  "Line2_Name",
				  "Line2_Age",
				  "Line2_Sex",
				  "Line2_Income",
				  "Line2_Monthly",
				  "Line2_Weekly",
				  "Line2_BiWeekly",
				  "Line2_Yearly",
				  "Line2_Medicaid",
				  "Line2_TANF",
				  "Line2_SSI",
				  "Line2_Other",
				  "Line3_Name",
				  "Line3_Age",
				  "Line3_Sex",
				  "Line3_Income",
				  "Line3_Monthly",
				  "Line3_Weekly",
				  "Line3_BiWeekly",
				  "Line3_Yearly",
				  "Line3_Medicaid",
				  "Line3_TANF",
				  "Line3_SSI",
				  "Line3_Other",
				  "Line4_Name",
				  "Line4_Age",
				  "Line4_Sex",
				  "Line4_Income",
				  "Line4_Monthly",
				  "Line4_Weekly",
				  "Line4_BiWeekly",
				  "Line4_Yearly",
				  "Line4_Medicaid",
				  "Line4_TANF",
				  "Line4_SSI",
				  "Line4_Other",
				  "Line5_Name",
				  "Line5_Age",
				  "Line5_Sex",
				  "Line5_Income",
				  "Line5_Monthly",
				  "Line5_Weekly",
				  "Line5_BiWeekly",
				  "Line5_Yearly",
				  "Line5_Medicaid",
				  "Line5_TANF",
				  "Line5_SSI",
				  "Line5_Other",
				  "Line6_Name",
				  "Line6_Age",
				  "Line6_Sex",
				  "Line6_Income",
				  "Line6_Monthly",
				  "Line6_Weekly",
				  "Line6_BiWeekly",
				  "Line6_Yearly",
				  "Line6_Medicaid",
				  "Line6_TANF",
				  "Line6_SSI",
				  "Line6_Other",
				  "Line7_Name",
				  "Line7_Age",
				  "Line7_Sex",
				  "Line7_Income",
				  "Line7_Monthly",
				  "Line7_Weekly",
				  "Line7_BiWeekly",
				  "Line7_Yearly",
				  "Line7_Medicaid",
				  "Line7_TANF",
				  "Line7_SSI",
				  "Line7_Other",
				  "Line8_Name",
				  "Line8_Age",
				  "Line8_Sex",
				  "Line8_Income",
				  "Line8_Monthly",
				  "Line8_Weekly",
				  "Line8_BiWeekly",
				  "Line8_Yearly",
				  "Line8_Medicaid",
				  "Line8_TANF",
				  "Line8_SSI",
				  "Line8_Other",
				  "Line9_Name",
				  "Line9_Age",
				  "Line9_Sex",
				  "Line9_Income",
				  "Line9_Monthly",
				  "Line9_Weekly",
				  "Line9_BiWeekly",
				  "Line9_Yearly",
				  "Line9_Medicaid",
				  "Line9_TANF",
				  "Line9_SSI",
				  "Line9_Other",
				  "Line10_Name",
				  "Line10_Age",
				  "Line10_Sex",
				  "Line10_Income",
				  "Line10_Monthly",
				  "Line10_Weekly",
				  "Line10_BiWeekly",
				  "Line10_Yearly",
				  "Line10_Medicaid",
				  "Line10_TANF",
				  "Line10_SSI",
				  "Line10_Other",
				  "Line11_Name",
				  "Line11_Age",
				  "Line11_Sex",
				  "Line11_Income",
				  "Line11_Monthly",
				  "Line11_Weekly",
				  "Line11_BiWeekly",
				  "Line11_Yearly",
				  "Line11_Medicaid",
				  "Line11_TANF",
				  "Line11_SSI",
				  "Line11_Other",
				  "Line12_Name",
				  "Line12_Age",
				  "Line12_Sex",
				  "Line12_Income",
				  "Line12_Monthly",
				  "Line12_Weekly",
				  "Line12_BiWeekly",
				  "Line12_Yearly",
				  "Line12_Medicaid",
				  "Line12_TANF",
				  "Line12_SSI",
				  "Line12_Other",
				  "Line13_Name",
				  "Line13_Age",
				  "Line13_Sex",
				  "Line13_Income",
				  "Line13_Monthly",
				  "Line13_Weekly",
				  "Line13_BiWeekly",
				  "Line13_Yearly",
				  "Line13_Medicaid",
				  "Line13_TANF",
				  "Line13_SSI",
				  "Line13_Other",
				  "Line14_Name",
				  "Line14_Age",
				  "Line14_Sex",
				  "Line14_Income",
				  "Line14_Monthly",
				  "Line14_Weekly",
				  "Line14_BiWeekly",
				  "Line14_Yearly",
				  "Line14_Medicaid",
				  "Line14_TANF",
				  "Line14_SSI",
				  "Line14_Other",
				  "Line15_Name",
				  "Line15_Age",
				  "Line15_Sex",
				  "Line15_Income",
				  "Line15_Monthly",
				  "Line15_Weekly",
				  "Line15_BiWeekly",
				  "Line15_Yearly",
				  "Line15_Medicaid",
				  "Line15_TANF",
				  "Line15_SSI",
				  "Line15_Other",
				  "Line16_Name",
				  "Line16_Age",
				  "Line16_Sex",
				  "Line16_Income",
				  "Line16_Monthly",
				  "Line16_Weekly",
				  "Line16_BiWeekly",
				  "Line16_Yearly",
				  "Line16_Medicaid",
				  "Line16_TANF",
				  "Line16_SSI",
				  "Line16_Other",
				  "Line17_Name",
				  "Line17_Age",
				  "Line17_Sex",
				  "Line17_Income",
				  "Line17_Monthly",
				  "Line17_Weekly",
				  "Line17_BiWeekly",
				  "Line17_Yearly",
				  "Line17_Medicaid",
				  "Line17_TANF",
				  "Line17_SSI",
				  "Line17_Other",
				  "Line18_Name",
				  "Line18_Age",
				  "Line18_Sex",
				  "Line18_Income",
				  "Line18_Monthly",
				  "Line18_Weekly",
				  "Line18_BiWeekly",
				  "Line18_Yearly",
				  "Line18_Medicaid",
				  "Line18_TANF",
				  "Line18_SSI",
				  "Line18_Other",
				  "Line19_Name",
				  "Line19_Age",
				  "Line19_Sex",
				  "Line19_Income",
				  "Line19_Monthly",
				  "Line19_Weekly",
				  "Line19_BiWeekly",
				  "Line19_Yearly",
				  "Line19_Medicaid",
				  "Line19_TANF",
				  "Line19_SSI",
				  "Line19_Other",
				  "Line20_Name",
				  "Line20_Age",
				  "Line20_Sex",
				  "Line20_Income",
				  "Line20_Monthly",
				  "Line20_Weekly",
				  "Line20_BiWeekly",
				  "Line20_Yearly",
				  "Line20_Medicaid",
				  "Line20_TANF",
				  "Line20_SSI",
				  "Line20_Other",
				  "Line21_Name",
				  "Line21_Age",
				  "Line21_Sex",
				  "Line21_Income",
				  "Line21_Monthly",
				  "Line21_Weekly",
				  "Line21_BiWeekly",
				  "Line21_Yearly",
				  "Line21_Medicaid",
				  "Line21_TANF",
				  "Line21_SSI",
				  "Line21_Other",
				  "Signature1Date",
				  "Signature2Date",
				  "Signature3Date",
				  "Signature4Date",
				  "Signature5Date",
				  "Signature6Date"};

		/*  Doesn't count the binaries
 				  "Signature1",
				  "Signature2",
				  "Signature3",
				  "Signature4",
				  "Signature5",
				  "Signature6",

		 */
		
    	// Get database values
    	Hashtable<String, String> values = new Hashtable<String, String>();
		for (String field : fields) {
			String val = rs.getString(field);
			if (val != null) {
				values.put(field, val);
			}
		}

		dateFormat(values, "Signature1Date");
		dateFormat(values, "Signature2Date");
		dateFormat(values, "Signature3Date");
		dateFormat(values, "Signature4Date");
		dateFormat(values, "Signature5Date");
		dateFormat(values, "Signature6Date");

		List<byte[]> signatures = new ArrayList<byte[]>();
		signatures.add(rs.getBytes("Signature1"));
		signatures.add(rs.getBytes("Signature2"));
		signatures.add(rs.getBytes("Signature3"));
		signatures.add(rs.getBytes("Signature4"));
		signatures.add(rs.getBytes("Signature5"));
		signatures.add(rs.getBytes("Signature6"));
		calculateFamilyNumberFields(values);

    	File srcFile = new File(src);
    	File destFile = new File("c:\\temp\\", String.format("%05d", count) + "_output_" + id + ".pdf");
    	FileUtils.copyFile(srcFile, destFile);    	

    	manipulatePdf(srcFile, destFile, values, signatures);
    }

    public static void splitFiles() throws IOException {
		File topFolder = new File("c:\\temp\\over10\\");
		File[] listOfFiles = topFolder.listFiles();
		
		int interval = 300;

		int folderMinNum = 0;
		int folderMaxNum = 299;
	    for (int i = 0; i < listOfFiles.length; i++) {
	      if (i > folderMaxNum) {
	    	  folderMinNum = folderMaxNum + 1;
	    	  folderMaxNum = folderMinNum + interval - 1;
	      }
	    	  
	      if (listOfFiles[i].isFile()) {
	        File folder = new File(topFolder.getPath() + "\\" + folderMinNum + "-" + folderMaxNum);
	        if (!folder.exists()) {folder.mkdir();}
	        System.out.println("copying " + listOfFiles[i].getPath() + " to " + folder.getPath());
	        FileUtils.copyFileToDirectory(listOfFiles[i], folder);
	      }
	    }
	}
    

    public static void makePDFSamFileLists(File folder) throws IOException {
		File[] listOfFiles = folder.listFiles();
	    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isDirectory()) {
		    	  makePDFSamFileList(listOfFiles[i], new File(folder, listOfFiles[i].getName() + ".xml"));
		      }
	    }
    }
    public static void makePDFSamFileList(File folder, File dest) throws IOException {
    	System.out.println("Making PDFSAM file " + dest.getAbsolutePath());
		ArrayList<String> fileList = new ArrayList<String>();
    	File[] listOfFiles = folder.listFiles();
	    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isFile()) {
		    	  fileList.add(listOfFiles[i].getAbsolutePath());
		      }
	    }
	    
	    PrintWriter writer = new PrintWriter(dest);
    	writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"); 
    	writer.println("<filelist>");
	    for(Iterator<String> i = fileList.iterator(); i.hasNext();) {
	    	writer.println("<file value=\"" + i.next() + "\"/>");
	    }
    	writer.println("</filelist>");
    	writer.close();

	    
    }
    public static void mergePDFs(File folder) throws IOException {
		File[] listOfFiles = folder.listFiles();
	    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isFile() && listOfFiles[i].getAbsolutePath().endsWith(".xml")) {
		    	  System.setProperty("log4j.configuration", "console-log4j.xml");
		    	  ConsoleClient.main(new String[] {"-l", listOfFiles[i].getAbsolutePath(), "-o", listOfFiles[i].getAbsolutePath().replace(".xml", ".pdf"), "concat"});
		      }
	    }
    }

    private static void calculateFamilyNumberFields(Hashtable<String, String> values) {
		/*
		Sub CalculateFamilyNumberFields
		
			Const NUM_LINES As Integer = 15
		
			Dim Doc As Object
			Dim Form As Object
			Dim NameCtl As Object
			Dim AgeCtl As Object
			Dim I As Integer
			Dim numFamilyMembers As Integer
			Dim numFamilyMembersUnder18 As Integer
			Dim numFamilyMembersOver65 As Integer
		
			 
			Doc = StarDesktop.CurrentComponent
			Form = Doc.DrawPage.Forms.GetByIndex(0)
		
			For I = 1 To NUM_LINES
			  NameCtlName = "Line" + I + "_Name"
			  AgeCtlName = "Line" + I + "_Age"
			  If Form.HasByName(NameCtlName) Then
			    NameCtl = Form.GetbyName(NameCtlName)
			    AgeCtl = Form.GetbyName(AgeCtlName)
			    If Trim(NameCtl.Text) <> "" Then
			    	numFamilyMembers = numFamilyMembers + 1
				    If Trim(AgeCtl.Text) <> "" Then
					    If CInt(AgeCtl.Text) < 18 Then
					    	numFamilyMembersUnder18 = numFamilyMembersUnder18 + 1
					    ElseIf CInt(AgeCtl.Text) > 65 Then
			    			numFamilyMembersOver65 = numFamilyMembersOver65 + 1
					    End If
				    End If
			    End If
			  End If
			Next I
		
			Form.GetbyName("NumberInFamily").Text = CStr(numFamilyMembers)
			Form.GetbyName("Number65andOlder").Text = CStr(numFamilyMembersOver65)
			Form.GetbyName("Number18andYounger").Text = CStr(numFamilyMembersUnder18)
		
		End Sub
		*/
    	
    	int numFamilyMembers = 0;
    	int numFamilyMembersUnder18 = 0;
    	int numFamilyMembersOver65 = 0;

    	for (int idx=1; idx <=20; idx++) {
			String nameCtlName = "Line" + idx + "_Name";
			String ageCtlName = "Line" + idx + "_Age";
		    String nameCtlText = values.get(nameCtlName);
		    String ageCtlText = values.get(ageCtlName);
		    
		    if (nameCtlText != null && !nameCtlText.trim().equals("")) {
		    	numFamilyMembers++;		    	
    		    if (ageCtlText != null && !ageCtlText.trim().equals("")) {
    		    	
    		    	int age = Integer.MIN_VALUE;
    		    	try {
    		    		age = Integer.parseInt(ageCtlText);
        			    if (age <= 18) {
        			    	numFamilyMembersUnder18++;
        			    } else if (age > 65) {
        			    	numFamilyMembersOver65++;
        			    }
    		    	} catch (NumberFormatException nfe) {
    		    	}
    		    }
		    }
    	}
		values.put("NumberInFamily", String.valueOf(numFamilyMembers));
		values.put("Number65andOlder", String.valueOf(numFamilyMembersOver65));
		values.put("Number18andYounger", String.valueOf(numFamilyMembersUnder18));

    }

    public static void manipulatePdf(File src, File dest, Hashtable<String, String> values, List<byte[]> signatures) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src.getAbsolutePath());
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
        AcroFields form = stamper.getAcroFields();

        BaseFont fontArial = BaseFont.createFont("C:\\Windows\\Fonts\\arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED); 
        
        Enumeration<String> keys = values.keys();
        while (keys.hasMoreElements()) {
        	String key = keys.nextElement();
        	form.setField(key, values.get(key));
        	form.setFieldProperty("Text1", "textfont", fontArial, null); 

        	if (key.endsWith("_Monthly") || key.endsWith("_Weekly") || key.endsWith("_BiWeekly") || key.endsWith("_Yearly")) {
        		setTableCheckbox(key, form, values);
        	}
        	//form.setFieldProperty("Name", "textsize", 10.0f, null);  // Don't pass in an integer
        }

        if ("Yes".equals(values.get("ListBox"))) {
    		form.setField("FoodStamps_Yes", "1");
    	} else { 
    		form.setField("Line1_FoodStamps_No", "0");
    	}

    	setYesNoRadio("Line1_TANF", form, values);
    	setYesNoRadio("Line1_SSI", form, values);
    	setYesNoRadio("Line1_Medicaid", form, values);



        for (int idx = 0; idx < 5; idx++) {
        	byte[] bytes = signatures.get(idx);
        	if (bytes != null) {
	        	Image sig = Image.getInstance(bytes);
	        	FieldPosition fp = form.getFieldPositions("Signature" + (idx+1) + "Date").get(0);
	            Rectangle dateRect = fp.position;
	        	sig.setAbsolutePosition(dateRect.getLeft() - 235, dateRect.getBottom() - 10);
	        	PdfContentByte content = stamper.getOverContent(fp.page);
	        	sig.scaleAbsolute(200, 25);
	        	content.addImage(sig);
        	}
        }
        
        stamper.setFormFlattening(true);
        stamper.close();
    }

    private static void setYesNoRadio(String fieldName, AcroFields form, Hashtable<String, String> values) throws IOException, DocumentException {
        if ("1".equals(values.get(fieldName))) {
    		form.setField(fieldName + "_Yes", "1");
    	} else if ("0".equals(values.get(fieldName))){ 
    		form.setField(fieldName + "_No", "0");
    	}
    }
    private static void setTableCheckbox(String fieldName, AcroFields form, Hashtable<String, String> values) throws IOException, DocumentException {
        if ("1".equals(values.get(fieldName)) || "Yes".equals(values.get(fieldName))) {
    		form.setField(fieldName, "Yes");
    	}
    }


    public static void showFields(String src) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src);
        AcroFields form = reader.getAcroFields();
        for (String key : form.getFields().keySet()) {
        	System.out.println(key);
        }
    }
    
    private static void dateFormat(Hashtable<String, String> values, String field) throws ParseException {
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.0");
    	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
    	String val = values.get(field);
    	if (val == null) {
    		return;
    	}
    	values.put(field, sdf2.format(sdf.parse(val)));
    }
}
