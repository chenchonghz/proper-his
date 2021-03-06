package com.javahis.system.combo;

import com.dongyang.config.TConfigParse.TObject;
import com.dongyang.ui.TComboBox;
import com.dongyang.ui.edit.TAttributeList;
import com.dongyang.ui.edit.TAttributeList.TAttribute;
import com.dongyang.data.TParm;

/**
 * <p>Title: 医保程序</p>
 *
 * <p>Description: 人员类别Combo</p>
 *
 * <p>Copyright: Copyright (c) 2008</p>
 *
 * <p>Company: JavaHis</p>
 *
 * @author Miracle
 * @version JavaHis 1.0
 */
public class TComboINS_PAY_KINDCode extends TComboBox {
    private String nhiCompany;
    /**
     * 新建对象的初始值
     * @param object TObject
     */
    public void createInit(TObject object) {
        if (object == null)
            return;
        object.setValue("Width", "81");
        object.setValue("Height", "23");
        object.setValue("Text", "TButton");
        object.setValue("showID", "Y");
        object.setValue("showName", "Y");
        object.setValue("showText", "N");
        object.setValue("showValue", "N");
        object.setValue("showPy1", "Y");
        object.setValue("showPy2", "Y");
        object.setValue("Editable", "Y");
        object.setValue("Tip", "人员类别");
        object.setValue("TableShowList", "id,name");
        object.setValue("ModuleParmString", "");
        object.setValue("ModuleParmTag", "");
    }

    public String getModuleName() {
        return "sys\\SYSComboSQL.x";
    }

    public String getModuleMethodName() {
        return "getInsPayKind";
    }

    public String getParmMap() {
        return "id:PAY_KIND_CODE;name:PAY_KIND_DESC";
    }
    /**
     * 增加扩展属性
     * @param data TAttributeList
     */
    public void getEnlargeAttributes(TAttributeList data){
        data.add(new TAttribute("NhiCompany", "String", "", "Left"));
    }

    /**
     * 设置属性
     * @param name String
     * @param value String
     */
    public void setAttribute(String name, String value) {
        if ("NhiCompany".equalsIgnoreCase(name)) {
            this.setNhiCompany(value);
            this.getTObject().setValue("NhiCompany", value);
            return;
        }
        super.setAttribute(name, value);
    }
    /**
     * 执行查询方法(COMBO联动)
     */
    public void onQuery() {
        TParm parm = new TParm();
        parm.setDataN("NHI_COMPANY", this.getTagValue(this.getNhiCompany()));
        this.setModuleParm(parm);
        super.onQuery();
    }
    public String getNhiCompany() {
        return nhiCompany;
    }

    public void setNhiCompany(String nhiCompany) {
        this.nhiCompany = nhiCompany;
    }

}
