package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.GrossProfitPage4Dto;
import com.honda.hdm.datacollect.model.enums.Page2And3Enum;

@Component
public class ExcelPage4 extends ValidationExcel {

	public List<GrossProfitPage4Dto> readModelsPage3(XSSFSheet sheet) throws ParseException {
		List<GrossProfitPage4Dto> models = new ArrayList<>();
		int index = 6; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(6);
		GrossProfitPage4Dto model = new GrossProfitPage4Dto();
		while(row != null) {
			model = readModelPage2And3(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 77) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}
	
	private GrossProfitPage4Dto readModelPage2And3(XSSFRow modelRow) throws ParseException {
		XSSFCell noLine = modelRow.getCell(Page2And3Enum.A.getColumn());
		XSSFCell unit = modelRow.getCell(Page2And3Enum.B.getColumn());
		XSSFCell sales = modelRow.getCell(Page2And3Enum.C.getColumn());
		XSSFCell grossProfit = modelRow.getCell(Page2And3Enum.D.getColumn());
		XSSFCell soldUnits = modelRow.getCell(Page2And3Enum.E.getColumn());
		XSSFCell deptoCarNew = modelRow.getCell(Page2And3Enum.F.getColumn());
		XSSFCell noAccount = modelRow.getCell(Page2And3Enum.G.getColumn());
		
		GrossProfitPage4Dto page3Dto = new GrossProfitPage4Dto();
		page3Dto.setUnitCurrentMonth(getCellString(unit).equals("") ? 0.0 : Double.valueOf(getCellString(unit)));
		page3Dto.setSalesCurrentMonth(getCellString(sales).equals("") ? 0.0 : Double.valueOf(getCellString(sales)));
		page3Dto.setGrossProfitCurrentMonth(getCellString(grossProfit).equals("") ? 0.0 : Double.valueOf(getCellString(grossProfit)));
		page3Dto.setSoldUnistCurrentMonth(getCellString(soldUnits).equals("") ? 0.0 : Double.valueOf(getCellString(soldUnits)));
		page3Dto.setDeptoCarNewCurrentMonth(getCellString(deptoCarNew));
		Double d = getCellString(noLine) == null || getCellString(noLine).equals("") ? 0.0 : Double.valueOf(getCellString(noLine)).longValue();
		page3Dto.setNoLine(d.longValue());
		page3Dto.setNoAccount(getCellString(noAccount));
		
		return page3Dto;
	}

}
