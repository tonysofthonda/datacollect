package com.honda.hdm.datacollect.service.excel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.stereotype.Component;

import com.honda.hdm.datacollect.model.dto.Page2and3FinancialDto;
import com.honda.hdm.datacollect.model.enums.Page2And3Enum;

@Component
public class ExcelPage2And3Financial extends ValidationExcel {

	public List<Page2and3FinancialDto> readModelsPage2And3(XSSFSheet sheet) throws ParseException {
		List<Page2and3FinancialDto> models = new ArrayList<>();
		int index = 9; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(9);
		Page2and3FinancialDto model = new Page2and3FinancialDto();
		while(row != null) {
			model = readModelPage2And3(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 82) {
				break;
			}
			
			if(model != null) {
				models.add(model);
			}
		}
		return models;
	}
	
	private Page2and3FinancialDto readModelPage2And3(XSSFRow modelRow) throws ParseException {
		XSSFCell noLine = modelRow.getCell(Page2And3Enum.A.getColumn());
		XSSFCell nameAccount = modelRow.getCell(Page2And3Enum.B.getColumn());
		XSSFCell noAccount = modelRow.getCell(Page2And3Enum.C.getColumn());
		XSSFCell totalIncome = modelRow.getCell(Page2And3Enum.D.getColumn());
		XSSFCell grossProfit= modelRow.getCell(Page2And3Enum.E.getColumn());
		XSSFCell newHonda= modelRow.getCell(Page2And3Enum.F.getColumn());
		XSSFCell newOthers = modelRow.getCell(Page2And3Enum.G.getColumn());
		XSSFCell usedMonth = modelRow.getCell(Page2And3Enum.H.getColumn());
		XSSFCell deptoService = modelRow.getCell(Page2And3Enum.I.getColumn());
		XSSFCell deptoWorkshop = modelRow.getCell(Page2And3Enum.J.getColumn());
		XSSFCell spareParts = modelRow.getCell(Page2And3Enum.K.getColumn());

		Page2and3FinancialDto page2and3FinancialDto = new Page2and3FinancialDto();
		page2and3FinancialDto.setNameAccount(getCellString(nameAccount));
		page2and3FinancialDto.setNoAccount(getCellString(noAccount));
		page2and3FinancialDto.setTotalIncomeExpensesPerMonth(getCellString(totalIncome).equals("") ? 0.0 : Double.valueOf(getCellString(totalIncome)));
		page2and3FinancialDto.setGrossProfit(getCellString(grossProfit).equals("") ? 0.0 : Double.valueOf(getCellString(grossProfit)));
		page2and3FinancialDto.setNewHondaMonth(getCellString(newHonda).equals("") ? 0.0 : Double.valueOf(getCellString(newHonda)));
		page2and3FinancialDto.setNewOthersMonth(getCellString(newOthers).equals("") ? 0.0 : Double.valueOf(getCellString(newOthers)));
		page2and3FinancialDto.setUsedMonth(getCellString(usedMonth).equals("") ? 0.0 : Double.valueOf(getCellString(usedMonth)));
		page2and3FinancialDto.setDeptoService(getCellString(deptoService).equals("") ? 0.0 : Double.valueOf(getCellString(deptoService)));
		page2and3FinancialDto.setDeptoWorkshop(getCellString(deptoWorkshop).equals("") ? 0.0 : Double.valueOf(getCellString(deptoWorkshop)));
		page2and3FinancialDto.setSpareParts(getCellString(spareParts).equals("") ? 0.0 : Double.valueOf(getCellString(spareParts)));
		Double d = getCellString(noLine) == null || getCellString(noLine).equals("") ? 0.0 : Double.valueOf(getCellString(noLine)).longValue();
		page2and3FinancialDto.setNoLine(d.longValue());
		return page2and3FinancialDto;
	}
}
