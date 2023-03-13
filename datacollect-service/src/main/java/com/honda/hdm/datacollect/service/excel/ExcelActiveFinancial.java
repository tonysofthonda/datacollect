package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.FinancialActiveDto;
import com.honda.hdm.datacollect.model.enums.PasiveEnum;

@Component
public class ExcelActiveFinancial extends ValidationExcel {
	
	public List<FinancialActiveDto> readModelsActive(XSSFSheet sheet) throws ParseException {
		List<FinancialActiveDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		FinancialActiveDto model = new FinancialActiveDto();
		while(row != null) {
			model = readModelActive(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 87) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}

	private FinancialActiveDto readModelActive(XSSFRow modelRow) throws ParseException {
		FinancialActiveDto activeDto = null;
		if(modelRow.getRowNum() <= 53) {
			activeDto = new FinancialActiveDto();
			XSSFCell title = modelRow.getCell(PasiveEnum.A1.getColumn());
			XSSFCell noAccount = modelRow.getCell(PasiveEnum.E1.getColumn());
			XSSFCell importe = modelRow.getCell(PasiveEnum.F1.getColumn());
			XSSFCell noLine = modelRow.getCell(PasiveEnum.G1.getColumn());
			Double d = getCellString(noLine) == null || getCellString(noLine).equals("") ? 0.0 : Double.valueOf(getCellString(noLine)).longValue();
			
			activeDto.setNoLine(d.longValue());
			activeDto.setTitle(getCellString(title));
			activeDto.setNoAccount(getCellString(noAccount));
			activeDto.setImporte(Double.valueOf(getCellString(importe)));
		}
				
		return activeDto;
	}
}
