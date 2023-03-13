package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.PassiveFinancialDto;
import com.honda.hdm.datacollect.model.enums.PasiveEnum;

@Component
public class ExcelPassiveFinancial extends ValidationExcel {

	public List<PassiveFinancialDto> readModelsPassive(XSSFSheet sheet) throws ParseException {
		List<PassiveFinancialDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		PassiveFinancialDto model = new PassiveFinancialDto();
		while(row != null) {
			model = readModelPassive(row);
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
	
	private PassiveFinancialDto readModelPassive(XSSFRow modelRow) throws ParseException {
		PassiveFinancialDto passiveListDto = null;
		if(modelRow.getRowNum() <= 55) {
			passiveListDto = new PassiveFinancialDto();
			XSSFCell title = modelRow.getCell(PasiveEnum.H1.getColumn());
			XSSFCell noAccount = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
			XSSFCell importe = modelRow.getCell(PasiveEnum.IMPORT.getColumn());
			XSSFCell noLine = modelRow.getCell(PasiveEnum.G1.getColumn());
			if(getCellString(title).equals("CUENTAS POR PAGAR") || getCellString(title).trim().equals("") ||
					getCellString(title).equals("CAPITAL DE TRABAJO NETO")) {
				title = modelRow.getCell(PasiveEnum.PASIVOS_BETWEEN.getColumn());
				passiveListDto.setTitle(getCellString(title));
				passiveListDto.setNoAccount(getCellString(noAccount));
				Double d = getCellString(noLine) == null || getCellString(noLine).equals("") ? 0.0 : Double.valueOf(getCellString(noLine)).longValue();
				passiveListDto.setNoLine(d.longValue());
				passiveListDto.setImporte(getCellString(importe).equals("") ? 0.0 : Double.valueOf(getCellString(importe)));
			} else {
				Double d = getCellString(noLine) == null || getCellString(noLine).equals("") ? 0.0 : Double.valueOf(getCellString(noLine)).longValue();
				passiveListDto.setNoLine(d.longValue());
				passiveListDto.setTitle(getCellString(title));
				passiveListDto.setNoAccount(getCellString(noAccount));
				passiveListDto.setImporte(getCellString(importe).equals("") ? 0.0 : Double.valueOf(getCellString(importe)));
			}
			
		}
				
		return passiveListDto;
	}
}
