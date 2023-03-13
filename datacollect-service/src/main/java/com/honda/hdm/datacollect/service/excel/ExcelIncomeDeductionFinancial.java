package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.IncomeDeductionDto;
import com.honda.hdm.datacollect.model.enums.Page2And3Enum;

@Component
public class ExcelIncomeDeductionFinancial extends ValidationExcel {

	public List<IncomeDeductionDto> readModelsOtherIncome(XSSFSheet sheet) throws ParseException {
		List<IncomeDeductionDto> models = new ArrayList<>();
		int index = 84; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(84);
		IncomeDeductionDto model = new IncomeDeductionDto();
		while(row != null) {
			model = readModelPage2And3(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 91) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}
	
	private IncomeDeductionDto readModelPage2And3(XSSFRow modelRow) throws ParseException {
		
		XSSFCell nameAccount = modelRow.getCell(Page2And3Enum.P.getColumn());
		XSSFCell noAccount = modelRow.getCell(Page2And3Enum.Q.getColumn());
		XSSFCell month = modelRow.getCell(Page2And3Enum.R.getColumn());

		IncomeDeductionDto otherIncomeDto = new IncomeDeductionDto();
		otherIncomeDto.setNameAccount(getCellString(nameAccount));
		otherIncomeDto.setNoAccount(getCellString(noAccount));
		otherIncomeDto.setMonth((getCellString(month) == null || getCellString(month).equals("")) ? 0.0 : Double.valueOf(getCellString(month)));
		
		

		return otherIncomeDto;
	}
}