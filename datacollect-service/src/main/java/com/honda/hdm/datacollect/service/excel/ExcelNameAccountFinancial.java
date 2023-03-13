package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.NameAccountDto;
import com.honda.hdm.datacollect.model.enums.PasiveEnum;

@Component
public class ExcelNameAccountFinancial extends ValidationExcel {

	public List<NameAccountDto> readModelsNameAccount(XSSFSheet sheet) throws ParseException {
		List<NameAccountDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		NameAccountDto model = new NameAccountDto();
		while(row != null) {
			model = readModelNameAccount(row);
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
	
	public NameAccountDto readModelNameAccount(XSSFRow modelRow) throws ParseException {
		NameAccountDto nameAccountDto = null;
		if(modelRow.getRowNum() >= 56 && modelRow.getRowNum() <= 71) {
			nameAccountDto = new NameAccountDto();
			XSSFCell cellBetween = modelRow.getCell(PasiveEnum.A1.getColumn());			
			nameAccountDto.setNameAccount(getCellString(cellBetween));
			cellBetween = modelRow.getCell(PasiveEnum.B1.getColumn());
			nameAccountDto.setNoAccount(getCellString(cellBetween));
			cellBetween = modelRow.getCell(PasiveEnum.C1.getColumn());
			nameAccountDto.setCost(getCellString(cellBetween).equals("") ? 0.0 : Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.D1.getColumn());
			nameAccountDto.setAccomulatedDepreciation(getCellString(cellBetween).equals("") ? 0.0 : Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.F1.getColumn());
			nameAccountDto.setImporte(getCellString(cellBetween).equals("") ? 0.0 : Double.valueOf(getCellString(cellBetween)));
			cellBetween = modelRow.getCell(PasiveEnum.G1.getColumn());
			Double d = getCellString(cellBetween) == null || getCellString(cellBetween).equals("") ? 0.0 : Double.valueOf(getCellString(cellBetween)).longValue();
			nameAccountDto.setNoLine(d.longValue());
		}
		return nameAccountDto;
	}
}
