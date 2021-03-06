package com.javahis.bsm;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
*
* <p>Title: 处方对象</p>
*
* <p>Description: </p>
*
* <p>Copyright: Copyright (c) 2013</p>
*
* <p>Company: JavaHis</p>
*
* @author chenx 2013.05.14 
* @version 4.0
*/
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "ROOT")
public class Prescription {
	private  String  OPWINID ;    //操作终端窗口号
	private  String  OPTYPE;      //操作代码
	private  String  OPIP;        //终端ip地址
	private  String  OPMANNO;     //终端操作员编号
	private  String  OPMANNAME;   //终端操作员姓名
	@XmlElement(name = "CONSIS_PRESC_MSTVW")
	private  List<PrescriptionTableMain> main; //处方主表
	@XmlElement(name = "CONSIS_BASIC_DRUGSVW")
	private List<DictionarySysFee>  sysFee ;//字典药品
	@XmlElement(name = "CONSIS_PHC_STORAGEVW")//料位字典
	private List<DictionaryStock>   stock ;
	@XmlElement(name = "CONSIS_STORAGE_APPVW")//305方法
	private List<RequestBean>   request ;
	@XmlElement(name = "CONSIS_PRESC_RETVW")//301方法
	private List<SendBean>   returnbean ;
	
	/**
	 * 操作终端窗口号
	 * @return
	 */
	public String getOPWINID() {
		return OPWINID;
	}
	/**
	 * 操作终端窗口号
	 * @param oPWINID
	 */
	public void setOPWINID(String oPWINID) {
		OPWINID = oPWINID;
	}
	/**
	 * 操作代码	201 付费
	 * @return
	 */
	public String getOPTYPE() {
		return OPTYPE;
	}
	/**
	 * 操作代码	201 付费
	 * @param oPTYPE
	 */
	public void setOPTYPE(String oPTYPE) {
		OPTYPE = oPTYPE;
	}
	/**
	 * 终端ip地址
	 * @return
	 */
	public String getOPIP() {
		return OPIP;
	}
	/**
	 * 终端ip地址
	 * @param oPIP
	 */
	public void setOPIP(String oPIP) {
		OPIP = oPIP;
	}
	/**
	 * 终端操作员编号
	 * @return
	 */
	public String getOPMANNO() {
		return OPMANNO;
	}
	/**
	 * 终端操作员编号
	 * @param oPMANNO
	 */
	public void setOPMANNO(String oPMANNO) {
		OPMANNO = oPMANNO;
	}
	/**
	 * 终端操作员姓名
	 * @return
	 */
	public String getOPMANNAME() {
		return OPMANNAME;
	}
	/**
	 * 终端操作员姓名
	 * @param oPMANNAME
	 */
	public void setOPMANNAME(String oPMANNAME) {
		OPMANNAME = oPMANNAME;
	}
	/**
	 * 得到处方主表
	 * @return
	 */
	public List<PrescriptionTableMain> getMain() {
		if (main == null) {  
			main = new ArrayList<PrescriptionTableMain>();  
        }  
        return this.main;  
    }  
	/**
	 * 得到药品（sys_fee）字典主档
	 * @return
	 */
	public List<DictionarySysFee> getSysFee() {
		if (sysFee == null) {  
			sysFee = new ArrayList<DictionarySysFee>();  
        }  
        return this.sysFee;  
    }  
	/**
	 * 得到药品库存主档
	 * @return
	 */
	public List<DictionaryStock> getStock() {
		if (stock == null) {  
			stock = new ArrayList<DictionaryStock>();  
        }  
        return this.stock;  
    }  
	/**
	 * 得到返回对象（请领单）305
	 * @return
	 */
	public List<RequestBean> getRequest() {
		if (request == null) {  
			request = new ArrayList<RequestBean>();  
        }  
		return request;
	}
	/**
	 * 设置返回对象请领单305
	 * @param request
	 */
	public void setRequest(List<RequestBean> request) {
		if (request == null) {  
			request = new ArrayList<RequestBean>();  
        }  
		this.request = request;
	}
	/**
	 * 得到301返回对象
	 * @return
	 */
	public List<SendBean> getReturn() {
		if (returnbean == null) {  
			returnbean = new ArrayList<SendBean>();  
        }  
		return returnbean ;
	}
	/**
	 * 设置301返回对象
	 * @param request
	 */
	public void setReturnt(List<SendBean> request) {
		if (request == null) {  
			request = new ArrayList<SendBean>();  
        }  
		this.returnbean = request;
	}
}
