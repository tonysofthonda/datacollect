package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.PerMonthFinancialDto;
import com.honda.hdm.datacollect.model.enums.PasiveEnum;

@Component
public class ExcelPerMonth extends ValidationExcel {
	
	public List<PerMonthFinancialDto> readModelsPerMonth(XSSFSheet sheet) throws ParseException {
		List<PerMonthFinancialDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		PerMonthFinancialDto model = new PerMonthFinancialDto();
		while(row != null) {
			model = readModelPerMonth(row);
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
	
	private PerMonthFinancialDto readModelPerMonth(XSSFRow modelRow) throws ParseException {
		PerMonthFinancialDto perMonth = null;
		if(modelRow.getRowNum() >= 59 && modelRow.getRowNum() <= 71) {
			perMonth = new PerMonthFinancialDto();
			XSSFCell month = modelRow.getCell(PasiveEnum.PASIVOS.getColumn());
			XSSFCell cellBetween = modelRow.getCell(PasiveEnum.PASIVOS_BETWEEN.getColumn());

			perMonth.setMonth(getCellString(month));
			perMonth.setUnitHonda(Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.NEW1.getColumn());
			perMonth.setNewOthers(Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.NEW2.getColumn());
			perMonth.setUnitUsedRetail(Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.NEW3.getColumn());
			perMonth.setUnitUsedWholesale(Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
			perMonth.setProfitOrLoss(Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.G1.getColumn());
			Double d = getCellString(cellBetween) == null || getCellString(cellBetween).equals("") ? 0.0 : Double.valueOf(getCellString(cellBetween)).longValue();
			perMonth.setNoLine(d.longValue());			
		}
		return perMonth;
	}

}
