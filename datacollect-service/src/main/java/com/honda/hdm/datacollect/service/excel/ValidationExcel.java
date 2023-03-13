package com.honda.hdm.datacollect.service.excel;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;

public class ValidationExcel {

	public String getCellString(XSSFCell cell) {
		if(cell == null) {
			return null;
		}
		
		switch(cell.getCellType()) {
		case Cell.CELL_TYPE_NUMERIC:
			return "" + cell.getNumericCellValue() + "".trim().replace(",", "");
		case Cell.CELL_TYPE_STRING:
			return cell.getStringCellValue() + "".trim();
		case Cell.CELL_TYPE_FORMULA:
			return getValueFormula(cell);
		case Cell.CELL_TYPE_BOOLEAN:
			return "" + cell.getBooleanCellValue() + "".trim();
		default:
			return "".trim();
		}
	}
	
	private String getValueFormula(XSSFCell cell) {
		if (cell.getCellType() == Cell.CELL_TYPE_FORMULA) {
		    switch (cell.getCachedFormulaResultType()) {
		        case Cell.CELL_TYPE_BOOLEAN:
		            return cell.getBooleanCellValue() + " ";
		        case Cell.CELL_TYPE_NUMERIC:
		            return cell.getNumericCellValue() + "";
		        case Cell.CELL_TYPE_STRING:
		            return cell.getRichStringCellValue() + "";
		    }
		}
		return "";
	}
}
