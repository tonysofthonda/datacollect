package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.AnalisysFinancialDto;
import com.honda.hdm.datacollect.model.enums.PasiveEnum;

@Component
public class ExcelAnalisys extends ValidationExcel {

	public List<AnalisysFinancialDto> readModelsAnalisys(XSSFSheet sheet) throws ParseException {
		List<AnalisysFinancialDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		AnalisysFinancialDto model = new AnalisysFinancialDto();
		while(row != null) {
			model = analysisAccount(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 90) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}
	
	private AnalisysFinancialDto analysisAccount(XSSFRow modelRow) {
		AnalisysFinancialDto analisysDto = null;
		if(modelRow.getRowNum() >= 81 && modelRow.getRowNum() <= 87) {
			analisysDto = new AnalisysFinancialDto();
			XSSFCell a1 = modelRow.getCell(PasiveEnum.A1.getColumn());
			XSSFCell b1 = modelRow.getCell(PasiveEnum.B1.getColumn());
			XSSFCell e1 = modelRow.getCell(PasiveEnum.E1.getColumn());
			XSSFCell f1 = modelRow.getCell(PasiveEnum.F1.getColumn());
			XSSFCell g1 = modelRow.getCell(PasiveEnum.G1.getColumn());
			XSSFCell i1 = modelRow.getCell(PasiveEnum.I1.getColumn());
			XSSFCell k1 = modelRow.getCell(PasiveEnum.K1.getColumn());
			XSSFCell m1 = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
			Double d = getCellString(a1) == null || getCellString(a1).equals("") ? 0.0 : Double.valueOf(getCellString(a1)).longValue();
			analisysDto.setNoLine(d.longValue());
			analisysDto.setType(getCellString(b1));
			analisysDto.setNoAccount(getCellString(e1));
			analisysDto.setFullyToUpDate(Double.valueOf(getCellString(f1)));
			analisysDto.setPastDueAccount3160(Double.valueOf(getCellString(g1)));
			analisysDto.setPastDueAccount6190(Double.valueOf(getCellString(i1)));
			analisysDto.setPastDueAccountsobre90(Double.valueOf(getCellString(k1)));
			analisysDto.setQuestionableAccount(Double.valueOf(getCellString(m1)));
		}
		return analisysDto;
	}
}