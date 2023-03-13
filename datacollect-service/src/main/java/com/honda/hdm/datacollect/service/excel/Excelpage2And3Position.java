package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.Page2and3PositionFinancialDto;
import com.honda.hdm.datacollect.model.enums.Page2And3Enum;

@Component
public class Excelpage2And3Position extends ValidationExcel {

	public List<Page2and3PositionFinancialDto> readModelsPage2And3(XSSFSheet sheet) throws ParseException {
		List<Page2and3PositionFinancialDto> models = new ArrayList<>();
		int index = 83; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(83);
		Page2and3PositionFinancialDto model = new Page2and3PositionFinancialDto();
		while(row != null) {
			model = readModelPage2And3(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 93) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}
	
	private Page2and3PositionFinancialDto readModelPage2And3(XSSFRow modelRow) throws ParseException {
		
		XSSFCell position = modelRow.getCell(Page2And3Enum.B.getColumn());
		XSSFCell a = modelRow.getCell(Page2And3Enum.C.getColumn());
		XSSFCell b = modelRow.getCell(Page2And3Enum.D.getColumn());
		XSSFCell c = modelRow.getCell(Page2And3Enum.E.getColumn());
		XSSFCell d = modelRow.getCell(Page2And3Enum.F.getColumn());
		XSSFCell e = modelRow.getCell(Page2And3Enum.G.getColumn());
		XSSFCell f = modelRow.getCell(Page2And3Enum.H.getColumn());
		XSSFCell total = modelRow.getCell(Page2And3Enum.I.getColumn());

		Page2and3PositionFinancialDto page2and3FinancialDto = new Page2and3PositionFinancialDto();
		page2and3FinancialDto.setPosition(getCellString(position));
		page2and3FinancialDto.setColumnA(getCellString(a).equals("") ? 0.0 : Double.valueOf(getCellString(a)));
		page2and3FinancialDto.setColumnB(getCellString(b).equals("") ? 0.0 : Double.valueOf(getCellString(b)));
		page2and3FinancialDto.setColumnC(getCellString(c).equals("") ? 0.0 : Double.valueOf(getCellString(c)));
		page2and3FinancialDto.setColumnD(getCellString(d).equals("") ? 0.0 : Double.valueOf(getCellString(d)));
		page2and3FinancialDto.setColumnE(getCellString(e).equals("") ? 0.0 : Double.valueOf(getCellString(e)));
		page2and3FinancialDto.setColumnF(getCellString(f).equals("") ? 0.0 : Double.valueOf(getCellString(f)));
		page2and3FinancialDto.setTotal(getCellString(total).equals("") ? 0.0 : Double.valueOf(getCellString(total)));
		

		return page2and3FinancialDto;
	}
}
