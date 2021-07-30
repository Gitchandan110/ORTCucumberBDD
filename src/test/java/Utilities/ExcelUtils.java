package Utilities;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelUtils {

	static File Path = new File(".\\Test Data\\InputData.xlsx");
	static File PathOutputData = new File(".\\Test Data\\OutputData.xlsx");
		
	public static String ReadExcel(String sheetName, int rownum, int cellnum) throws IOException {

		FileInputStream fis = new FileInputStream(Path);
		XSSFWorkbook workbook = new XSSFWorkbook(fis);
		XSSFSheet sheet = workbook.getSheet(sheetName);
		Row row = sheet.getRow(rownum);
		Cell cell = sheet.getRow(rownum).getCell(cellnum);
		System.out.println("Cell has:" + cell);
		String cellData=cell.toString();
		System.out.println("String Cell data is :" + cellData);
		fis.close();
		return cellData;
		
	}

	public static void writeExcel(String sheetname, int rownum, int cellnum,  String celldata)
			throws IOException {
		try {
			FileInputStream fis = new FileInputStream(PathOutputData);
			XSSFWorkbook workbook = new XSSFWorkbook(fis);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			Row row = sheet.getRow(rownum);
			if(row==null) {
			row = sheet.createRow(rownum);
			}
			Cell cell = sheet.getRow(rownum).createCell(cellnum);
			cell.setCellValue(celldata);
			
			FileOutputStream fos = new FileOutputStream(PathOutputData);
			workbook.write(fos);
			workbook.close();
			
		} catch (Exception ex) {
			System.out.println("Exception caught in Write Excel is: "+ ex);

		}
	}

}