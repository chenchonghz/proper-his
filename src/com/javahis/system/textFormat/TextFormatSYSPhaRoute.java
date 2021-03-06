package com.javahis.system.textFormat;

import com.dongyang.ui.TTextFormat;
import com.dongyang.ui.edit.TAttributeList.TAttribute;
import com.dongyang.config.TConfigParse.TObject;
import com.dongyang.util.TypeTool;
import com.dongyang.ui.edit.TAttributeList;

/**
 * <p>Title: 用法下拉区域</p>
 *
 * <p>Description: 用法下拉区域</p>
 *
 * <p>Copyright: Copyright (c) Liu dongyang 2008</p>
 *
 * <p>Company: JavaHis</p>
 *
 * @author wangl 2009.10.29
 * @version 1.0
 */
public class TextFormatSYSPhaRoute
    extends TTextFormat {
    /**
     * 西药注记
     */
    private String wesmedFlg;
    /**
     * 设置西药注记
     * @param wesmedFlg String
     */
    public void setWesmedFlg(String wesmedFlg) {
        this.wesmedFlg = wesmedFlg;
    }

    /**
     * 得到西药注记
     * @return wesmedFlg String
     */
    public String getWesmedFlg() {
        return this.wesmedFlg;
    }

    /**
     * 执行Module动作
     * @return String
     */
    public String getPopupMenuSQL() {
        String sql =
            " SELECT ROUTE_CODE AS ID,ROUTE_CHN_DESC AS NAME ,ROUTE_ENG_DESC AS ENNAME,PY1, PY2 FROM SYS_PHAROUTE ";
        String sql1 = " ORDER BY SEQ,ROUTE_CODE";

        StringBuffer sb = new StringBuffer();

        String wesmedFlg = TypeTool.getString(getTagValue(getWesmedFlg()));
        if (wesmedFlg != null && wesmedFlg.length() > 0)
            sb.append(" WESMED_FLG = '" + wesmedFlg + "' ");

        if (sb.length() > 0)
            sql += " WHERE " + sb.toString() + sql1;
        else
            sql = sql + sql1;
        return sql;
    }

    /**
     * 新建对象的初始值
     * @param object TObject
     */
    public void createInit(TObject object) {
        if (object == null)
            return;
        object.setValue("Width", "81");
        object.setValue("Height", "23");
        object.setValue("Text", "");
        object.setValue("HorizontalAlignment", "2");
        object.setValue("PopupMenuHeader", "代码,100;名称,100");
        object.setValue("PopupMenuWidth", "300");
        object.setValue("PopupMenuHeight", "300");
        object.setValue("PopupMenuFilter", "ID,1;NAME,1;PY1,1");
        object.setValue("FormatType", "combo");
        object.setValue("ShowDownButton", "Y");
        object.setValue("Tip", "用法");
        object.setValue("ShowColumnList", "ID;NAME");
    }
    public void onInit() {
        super.onInit();
        setPopupMenuFilter("ID,1;NAME,3;ENNAME,3;PY1,1");
        setLanguageMap("NAME|ENNAME");
        setPopupMenuEnHeader("Code;Name");
    }

    /**
     * 显示区域列明
     * @return String
     */
    public String getPopupMenuHeader() {
        return "代码,100;名称,200";
    }

    /**
     * 增加扩展属性
     * @param data TAttributeList
     */
    public void getEnlargeAttributes(TAttributeList data) {
        data.add(new TAttribute("ShowColumnList", "String", "NAME", "Left"));
        data.add(new TAttribute("ValueColumn", "String", "ID", "Left"));
        data.add(new TAttribute("WesmedFlg", "String", "", "Left"));
        data.add(new TAttribute("HisOneNullRow", "boolean", "N", "Center"));

    }

    /**
     * 设置属性
     * @param name String 属性名
     * @param value String 属性值
     */
    public void setAttribute(String name, String value) {

        if ("WesmedFlg".equalsIgnoreCase(name)) {
            setWesmedFlg(value);
            getTObject().setValue("WesmedFlg", value);
            return;
        }
        super.setAttribute(name, value);
    }
}
