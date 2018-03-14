package com.javahis.system.textFormat;

import com.dongyang.ui.edit.TAttributeList.TAttribute;
import com.dongyang.ui.TTextFormat;
import com.dongyang.config.TConfigParse.TObject;
import com.dongyang.ui.edit.TAttributeList;

/**
 * 
 * <p>
 * Title:物联网智能柜下拉列表
 * </p>
 * 
 * <p>
 * Description: 物联网智能柜下拉列表
 * </p>
 * 
 * <p>
 * Copyright (c) BlueCore 2012
 * </p>
 * 
 * <p>
 * Company: BlueCore
 * </p>
 * 
 * @author liyh 20121023
 * @version 1.0
 */

public class TextFormatSPCCabinetCode extends TTextFormat {

	/**
	 * 执行Module动作
	 * 
	 * @return String    
	 */
	public String getPopupMenuSQL() {
		String sql = "SELECT CABINET_ID AS ID,CABINET_DESC AS NAME,''  AS ENNAME ,'' AS PY1 " +
				" FROM IND_CABINET WHERE CABINET_TYPE='01' ORDER BY  ORG_CODE ";
		return sql;
	}

	/**
	 * 新建对象的初始值
	 * 
	 * @param object
	 *            TObject
	 */
	public void createInit(TObject object) {
		if (object == null)
			return;
		object.setValue("Width", "81");
		object.setValue("Height", "23");
		object.setValue("Text", "");
		object.setValue("HorizontalAlignment", "2");
		object.setValue("PopupMenuHeader", "编码,100;名称,100");
		object.setValue("PopupMenuWidth", "300");
		object.setValue("PopupMenuHeight", "300");
		object.setValue("PopupMenuFilter", "ID,1;NAME,1;PY1,1");
		object.setValue("FormatType", "combo");
		object.setValue("ShowDownButton", "Y");
		object.setValue("Tip", "药库");
		object.setValue("ShowColumnList", "ID;NAME");
	}

	public void onInit() {
		super.onInit();
		setPopupMenuFilter("ID,1;NAME,3;ENNAME,3;PY1,1");
		setLanguageMap("NAME|ENNAME");
		setPopupMenuEnHeader("Code;Name");
	}

	/**
	 * 显示区域列名
	 * 
	 * @return String
	 */
	public String getPopupMenuHeader() {

		return "编码,100;名称,200";
	}

	/**
	 * 增加扩展属性
	 * 
	 * @param data
	 *            TAttributeList
	 */
	public void getEnlargeAttributes(TAttributeList data) {
		data.add(new TAttribute("ShowColumnList", "String", "NAME", "Left"));
		data.add(new TAttribute("ValueColumn", "String", "ID", "Left"));
		data.add(new TAttribute("HisOneNullRow", "boolean", "N", "Center"));
	}

	/**
	 * 设置属性
	 * 
	 * @param name
	 *            String 属性名
	 * @param value
	 *            String 属性值
	 */
	public void setAttribute(String name, String value) {

		super.setAttribute(name, value);
	}

}
