package com.javahis.ui.nss;

import java.awt.Component;
import java.awt.Container;
import java.awt.Frame;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Timestamp;
import java.util.Vector;

import javax.swing.SwingUtilities;

import jdo.bil.BILInvoiceTool;
import jdo.odi.OdiMainTool;
import jdo.sys.Operator;
import jdo.sys.Pat;
import jdo.sys.PatTool;
import jdo.sys.SYSBedTool;
import jdo.sys.SYSNewRegionTool;
import jdo.sys.SystemTool;

import com.dongyang.config.TConfig;
import com.dongyang.control.TControl;
import com.dongyang.data.TParm;
import com.dongyang.jdo.TJDODBTool;
import com.dongyang.manager.TIOM_Database;
import com.dongyang.ui.TCheckBox;
import com.dongyang.ui.TComponent;
import com.dongyang.ui.TMenuItem;
import com.dongyang.ui.TPanel;
import com.dongyang.ui.TTabbedPane;
import com.dongyang.ui.TTable;
import com.dongyang.ui.TTextFormat;
import com.dongyang.ui.event.TTableEvent;
import com.dongyang.ui.util.Compare;
import com.dongyang.util.StringTool;
import com.dongyang.util.TMessage;
import com.javahis.system.textFormat.TextFormatSYSDeptForOprt;
import com.javahis.system.textFormat.TextFormatSYSOperator;
import com.javahis.system.textFormat.TextFormatSYSOperatorStation;
import com.javahis.system.textFormat.TextFormatSYSStation;
import com.javahis.ui.sys.LEDUI;
import com.javahis.util.JavaHisDebug;
import com.javahis.util.OdiUtil;
import com.javahis.util.StringUtil;

import device.PassDriver;

/**
 * <p>
 * Title: 膳食系统=>膳食操作=>营养师工作站
 * </p>
 * 
 * <p>
 * Description: 
 * </p>
 * 
 * <p>
 * Copyright: Copyright JavaHis (c) 2012年7月3日
 * </p>
 * 
 * <p>
 * Company: JavaHis
 * </p>
 * 
 * @author lix
 * @version JavaHis 1.0
 */
public class NSSMainControl extends TControl {
	private static String TABLE = "TABLE";
	private static String PANEL = "Panel";
	/**
	 * 当前子页面TAG
	 */
	public String workPanelTag = "";
	/**
	 * 设置系统代码
	 */
	private String runFlg = "";
	/**
	 * Socket传送护士站工具
	 */
	// private SocketLink client;
	/**
	 * 护士站权限
	 */
	private boolean inwPopedem;
	/**
	 * 跑马灯
	 */
	private LEDUI ledUi;
	private LEDUI ledUi1;
	/**
	 * 跑马灯参数
	 */
	private TParm ledParm;
	/**
	 * 合理用药
	 */
	private boolean passIsReady = false;

	private boolean enforcementFlg = false;

	private int warnFlg;
	private String srceenWidth = "";
	/**
	 * ICU注记
	 */
	private boolean IsICU = false;
	// $$=============add by lx 2012-07-03 加入排序功能start==================$$//
	private Compare compare = new Compare();
	private boolean ascending = false;
	private int sortColumn = -1;

	// $$=============add by lx 2012-07-03 加入排序功能end==================$$//
	public String getSrceenWidth() {
		return srceenWidth;
	}

	public void setSrceenWidth(String srceenWidth) {
		this.srceenWidth = srceenWidth;
	}

	/**
	 * 初始化参数
	 */

	public void onInitParameter() {
		// 测试数据 IBS
		// this.setPopedem("deptEnabled",true);
		// this.setPopedem("deptAll",true);
		// this.setPopedem("stationEnabled",true);
		// this.setPopedem("stationAll",true);
		// this.setPopedem("odiButtonVisible",true);
		// this.setPopedem("inwCheckVisible",true);
		// this.setPopedem("inwExecuteVisible",true);
		// this.setPopedem("ibsStButVisible",true);
		// 住院

		this.setPopedem("deptEnabled", true);
		this.setPopedem("deptAll", true);
		this.setPopedem("stationEnabled", true);
		this.setPopedem("stationAll", true);
		this.setPopedem("odiButtonVisible", true);
		this.setPopedem("inwCheckVisible", true);
		// modify shibl 20120317
		// this.setPopedem("inwExecuteVisible", true);
		this.setPopedem("ibsStButVisible", true);

	}

	public void onInit() {
		super.onInit();
		this.getTMenuItem("card").setEnabled(false);
		// shibl 20120329 add
		this.callFunction("UI|tpr|setVisible", false);
		this.callFunction("UI|newtpr|setVisible", false);
		// TABLE双击事件
		callFunction("UI|" + TABLE + "|addEventListener", TABLE + "->"
				+ TTableEvent.DOUBLE_CLICKED, this, "onTableDoubled");
		callFunction("UI|" + TABLE + "|addEventListener", TABLE + "->"
				+ TTableEvent.CLICKED, this, "onTableClicke");
		// //注册TPanel点击事件
		// callFunction("UI|" + PANEL + "|addEventListener",
		// PANEL + "->" + "", this, "onTableClicked");
		// 设置系统代码
		Object obj = this.getParameter();

		if (obj != null) {
			// $$add by lx 2012/03/19 处理1024*768;
			String strParameter = this.getParameter().toString();
			String sysID = "";
			// 包含;多个
			if (strParameter.indexOf(";") != -1) {
				//this.messageBox("width"+ strParameter.split(";")[0]);
				sysID = strParameter.split(";")[0];
				this.setSrceenWidth(strParameter.split(";")[1]);
			} else {
				sysID = this.getParameter().toString();
			}

			this.setRunFlg(sysID);
		} else {
			// 测试
			// this.setRunFlg("IBSPAYBILL");
			this.setRunFlg("ODI");
			// this.setRunFlg("INWCHECK");
			// this.setRunFlg("MRO");
			// this.setRunFlg("OIDR");
			// this.setRunFlg("NSSORDER");
			// this.setRunFlg("NSSCHAR");
		}
		// 初始化权限
		this.onInitPopeDem();
		// 清空
		this.onClear();
		// 各个子系统初始化
		this.initSystem();
		// 初始化查询
		this.onQuery();
		// 初始化SYS_FEE
		// this.initSysFeeData();
		// 设置标题
		String s = getConfigString(getRunFlg() + "_Title");
		if (s != null && s.length() > 0)
			this.setTitle(s);

		// $$=====add by lx 2012/06/24 加入排序方法start============$$//
		addListener(getTTable("TABLE"));
		// $$=====add by lx 2012/06/24 加入排序方法end============$$//
	}

	/**
	 * 单击事件
	 * 
	 * @param row
	 *            int
	 */
	public void onTableClicke(int row) {
		//this.messageBox("==come in1111111==");
		if (row < 0)
			return;
		TParm parm = getTTable("TABLE").getParmValue().getRow(row);

		if (this.getRunFlg().equals("INWCHECK")
				|| this.getRunFlg().equals("INWEXE")
				|| this.getRunFlg().equals("SHEET")) {
			// 病区
			TextFormatSYSOperatorStation h = (TextFormatSYSOperatorStation) this
					.getComponent("INW_STATION_CODE");
			h.setUserID(Operator.getID());
			h.onQuery();
			// 科室
			TextFormatSYSDeptForOprt d = (TextFormatSYSDeptForOprt) this
					.getComponent("INW_DEPT_CODE");
			d.setStationCode(this.getValueString("INW_STATION_CODE"));
			d.onQuery();
			// 经治医师
			TextFormatSYSOperator k = (TextFormatSYSOperator) this
					.getComponent("INW_VC_CODE");
			k.setDept(this.getValueString("INW_DEPT_CODE"));
			k.onQuery();
			// 出院病区
			TextFormatSYSStation h1 = (TextFormatSYSStation) this
					.getComponent("STATION_CODEOUT");
			h1.setDeptCode(this.getValueString("DEPT_CODEOUT"));
			h1.onQuery();
			// 出院经治医师
			TextFormatSYSOperator k1 = (TextFormatSYSOperator) this
					.getComponent("VC_CODEOUT");
			k1.setDept(this.getValueString("DEPT_CODEOUT"));
			k1.onQuery();
			this.setValue("INW_STATION_CODE", parm.getValue("STATION_CODE"));
			this.setValue("INW_DEPT_CODE", parm.getValue("DEPT_CODE"));
			this.setValue("INW_VC_CODE", parm.getValue("VS_DR_CODE"));
		} else {
			// 病区
			TextFormatSYSStation h = (TextFormatSYSStation) this
					.getComponent("STATION_CODE");
			h.setDeptCode(this.getValueString("DEPT_CODE"));
			h.onQuery();
			// 经治医师
			TextFormatSYSOperator k = (TextFormatSYSOperator) this
					.getComponent("VC_CODE");
			k.setDept(this.getValueString("DEPT_CODE"));
			k.onQuery();
			// 出院病区
			TextFormatSYSStation h1 = (TextFormatSYSStation) this
					.getComponent("STATION_CODEOUT");
			h1.setDeptCode(this.getValueString("DEPT_CODEOUT"));
			h1.onQuery();
			// 出院经治医师
			TextFormatSYSOperator k1 = (TextFormatSYSOperator) this
					.getComponent("VC_CODEOUT");
			k1.setDept(this.getValueString("DEPT_CODEOUT"));
			k1.onQuery();
		}
	}

	public void initSystem() {
		// 医生站初始化
		if (this.getRunFlg().equals("ODI")) {
			this.callFunction("UI|tpr|setVisible", false);
			this.callFunction("UI|newtpr|setVisible", false);
		}
		// 呼叫Socket计费
		if (this.getRunFlg().equals("IBS")) {
			this.callFunction("UI|tpr|setVisible", false);
			this.callFunction("UI|newtpr|setVisible", false);
		}
		// 临床路径
		if (this.getRunFlg().equals("CLPMANAGEM")) {
			this.callFunction("UI|tpr|setVisible", false);
			this.callFunction("UI|newtpr|setVisible", false);
		}
		// 呼叫Socket护士站
		if (this.getRunFlg().equals("INWCHECK")) {
			this.callFunction("UI|tpr|setVisible", false);
			this.callFunction("UI|newtpr|setVisible", false);
			// this.messageBox("===INWCHECK===");
			// 护士相关操作， 可打开床头卡
			this.getTMenuItem("card").setEnabled(true);
			// shibl add
			String userId = Operator.getID();
			this.setValue("USER_ID", userId);
			this.setValue("INW_STATION_CODE", Operator.getStation());
			this.setValue("INW_DEPT_CODE", "");
			callFunction("UI|INW_VC_CODE|onQuery");
			callFunction("UI|INW_STATION_CODE|onQuery");
			callFunction("UI|INW_DEPT_CODE|onQuery");
			((TTextFormat) getComponent("DEPT_CODE")).setVisible(false);
			((TTextFormat) getComponent("STATION_CODE")).setVisible(false);
			((TTextFormat) getComponent("VC_CODE")).setVisible(false);
			((TTextFormat) getComponent("INW_DEPT_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_STATION_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_VC_CODE")).setVisible(true);
			// 打开LEDUI
			openLEDUI();
		}
		if (this.getRunFlg().equals("INWEXE")) {
			this.callFunction("UI|tpr|setVisible", true);
			this.callFunction("UI|newtpr|setVisible", true);
			String userId = Operator.getID();
			this.setValue("USER_ID", userId);
			this.setValue("INW_STATION_CODE", Operator.getStation());
			this.setValue("INW_DEPT_CODE", "");
			callFunction("UI|INW_VC_CODE|onQuery");
			callFunction("UI|INW_STATION_CODE|onQuery");
			callFunction("UI|INW_DEPT_CODE|onQuery");
			// shibl add
			((TTextFormat) getComponent("DEPT_CODE")).setVisible(false);
			((TTextFormat) getComponent("STATION_CODE")).setVisible(false);
			((TTextFormat) getComponent("VC_CODE")).setVisible(false);
			((TTextFormat) getComponent("INW_DEPT_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_STATION_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_VC_CODE")).setVisible(true);
			// 护士相关操作， 可打开床头卡
			this.getTMenuItem("card").setEnabled(true);
			// modify shibl 20120317
			// openLEDOneUI();
		}

		/**
		 * 护士站医嘱单打印
		 */
		if (this.getRunFlg().equals("SHEET")) {
			// 护士相关操作， 可打开床头卡
			// this.getTMenuItem("bedcard").setEnabled(true);
			String userId = Operator.getID();
			this.setValue("USER_ID", userId);
			this.setValue("INW_STATION_CODE", Operator.getStation());
			this.setValue("INW_DEPT_CODE", "");
			callFunction("UI|INW_VC_CODE|onQuery");
			callFunction("UI|INW_STATION_CODE|onQuery");
			callFunction("UI|INW_DEPT_CODE|onQuery");
			// shibl add
			((TTextFormat) getComponent("DEPT_CODE")).setVisible(false);
			((TTextFormat) getComponent("STATION_CODE")).setVisible(false);
			((TTextFormat) getComponent("VC_CODE")).setVisible(false);
			((TTextFormat) getComponent("INW_DEPT_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_STATION_CODE")).setVisible(true);
			((TTextFormat) getComponent("INW_VC_CODE")).setVisible(true);
		}

	}

	/**
	 * 初始化SYS_FEE
	 */
	public void initSysFeeData() {
		if ("ODI".equals(this.getRunFlg())) {
			SwingUtilities.invokeLater(new Runnable() {
				public void run() {
					try {
						// Thread.sleep(100);
						TIOM_Database.getLocalTable("SYS_FEE");
						TIOM_Database.getLocalTable("SYS_DIAGNOSIS");
					} catch (Exception e) {
					}
				}
			});
		}
	}

	/**
	 * 开打LEDUI
	 */
	public void openLEDUI() {
		Component com = (Component) this.getComponent();
		TParm parm = new TParm();
		parm.setData("STATION_CODE", this.getValueString("INW_STATION_CODE"));
		parm.addListener("onSelStation", this, "onSelStationListenerLed");
		while (com != null && !(com instanceof Frame))
			com = com.getParent();
		ledUi = new LEDUI((Frame) com, this, parm);
		ledUi.openWindow();
	}

	/**
	 * 开打LEDUI
	 */
	public void openLEDOneUI() {
		Component com = (Component) this.getComponent();
		TParm parm = new TParm();
		parm.setData("STATION_CODE", this.getValueString("INW_STATION_CODE"));
		parm.addListener("onSelStation", this, "onSelStationListenerLed");
		while (com != null && !(com instanceof Frame))
			com = com.getParent();
		ledUi1 = new LEDUI((Frame) com, this, parm, true);
		ledUi1.openWindow();
	}

	/**
	 * 拿到病区
	 * 
	 * @param parm
	 *            TParm
	 */
	public void onSelStationListenerLed(TParm parm) {
		// System.out.println("parm"+parm);
		this.ledParm = parm;
	}

	/**
	 * 病区选择事件
	 */
	public void onSel() {
		if (this.getValueString("INW_STATION_CODE").length() != 0)
			this.ledParm.runListener("onListenerLed", this
					.getValueString("INW_STATION_CODE"));
	}

	/**
	 * 开打护士站通讯窗口
	 * 
	 * @param parm
	 *            TParm
	 */
	public void openInwCheckWindow(TParm parm) {
		// 调用护士站选择病患页面
		Object obj = this.openDialog("%ROOT%\\config\\odi\\PatInfoUI.x", parm);
		if (obj != null) {
			TParm action = (TParm) obj;
			action.setData("LEDUI", ledUi);
			// 调用护士审核界面
			this.runPaneSocketInwCheck("INWSTATIONCHECK",
					"inw\\INWOrderCheckMain.x", action);
			// ledUi.removeMessage(action);\
			// modify shibl 20120317
			// if (null != action.getValue("FLG")
			// || action.getValue("FLG").equals("Y")) {// 判断护士站执行操作
			// action.setData("LEDUI", ledUi1);
			// // System.out.println("action::::"+action);
			// // 调用护士执行界面
			// this.runPaneSocketInwExe("INWSTATIONEXECUTE",
			// "inw\\INWOrderExecMain.x", action);
			//
			// } else {
			// action.setData("LEDUI", ledUi);
			// // 调用护士审核界面
			// this.runPaneSocketInwCheck("INWSTATIONCHECK",
			// "inw\\INWOrderCheckMain.x", action);
			//
			// }

		}
	}

	/**
	 * 护士站执行得到病患详细数据
	 * 
	 * @param tag
	 *            String
	 * @param path
	 *            String
	 * @param parm
	 *            TParm =================pangben 2011-11-10
	 */
	public void runPaneSocketInwExe(String tag, String path, TParm parm) {

		// this.messageBox("runPaneSocketInwExe");
		// 关闭当前工作页面
		// onClosePanel();
		// 得到选中行数据
		this.setValue("MR_NO", parm.getValue("MR_NO"));
		this.setValue("PAT_NAME", parm.getValue("PAT_NAME"));
		this.setValue("IPD_NO", parm.getValue("IPD_NO"));
		this.setValue("CASE_NO", parm.getValue("CASE_NO"));
		TParm actionParm = ExeQuery().getRow(0);
		// System.out.println("actionParm:::"+actionParm);
		TParm action = new TParm();
		action.setData("CASE_NO", parm.getData("CASE_NO"));

		action.setData("STATION_CODE", parm.getData("STATION_CODE"));
		action.setData("POPEDEM", this.isInwPopedem());
		this.setValue("INW_STATION_CODE", parm.getValue("STATION_CODE"));
		// 病区
		TextFormatSYSOperatorStation h = (TextFormatSYSOperatorStation) this
				.getComponent("INW_STATION_CODE");
		h.setUserID(Operator.getID());
		h.onQuery();
		// 科室
		TextFormatSYSDeptForOprt d = (TextFormatSYSDeptForOprt) this
				.getComponent("INW_DEPT_CODE");
		d.setStationCode(this.getValueString("INW_STATION_CODE"));
		d.onQuery();
		// 经治医师
		TextFormatSYSOperator k = (TextFormatSYSOperator) this
				.getComponent("INW_VC_CODE");
		k.setDept(this.getValueString("INW_DEPT_CODE"));
		k.onQuery();
		// 出院病区
		TextFormatSYSStation h1 = (TextFormatSYSStation) this
				.getComponent("STATION_CODEOUT");
		h1.setDeptCode(actionParm.getValue("DEPT_CODE"));
		h1.onQuery();
		// 出院经治医师
		TextFormatSYSOperator k1 = (TextFormatSYSOperator) this
				.getComponent("VC_CODEOUT");
		k1.setDept(actionParm.getValue("DEPT_CODE"));
		k1.onQuery();

		// 身份1
		action.setData("INW", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
		// 身份2
		action.setData("INW", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
		// 身份3
		action.setData("INW", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
		// 姓名
		action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
		// 科室
		action.setData("INW", "DEPT_CODE", this.getValue("INW_DEPT_CODE"));
		// 住院号
		action.setData("INW", "IPD_NO", actionParm.getData("IPD_NO"));
		// 病案号
		action.setData("INW", "MR_NO", this.getValue("MR_NO"));
		// 入院时间
		action.setData("INW", "ADM_DATE", actionParm.getData("IN_DATE"));
		// 保存权限注记
		action.setData("INW", "SAVE_FLG", true);
		action.setData("INW", "LEDUI", parm.getData("LEDUI"));
		this.setValue("BED_NO", actionParm.getValue("BED_NO_DESC"));

		this.setValue("SEX", actionParm.getValue("SEX_CODE"));
		this.setValue("SERVICE_LEVELIN", actionParm.getValue("SERVICE_LEVEL"));
		this.setValue("ADM_DATE", actionParm.getTimestamp("IN_DATE"));
		this.setValue("TOTAL_AMT", actionParm.getDouble("TOTAL_AMT"));
		this.setValue("INW_VC_CODE", actionParm.getValue("VS_DR_CODE"));

		onClosePanel();
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		tabPane.setEnabled(false);
		getTPanel().addItem(tag, "%ROOT%\\config\\" + path, action, false);
		((TTable) this.getComponent(TABLE)).setVisible(false);
		workPanelTag = tag;
	}

	private TParm ExeQuery() {
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		TParm actionParm = null;
		int selType = tabPane.getSelectedIndex();
		// 0为在院页签的INDEX;1为出院页签的INDEX
		if (selType == 0) {
			// 得到在院查询的参数
			TParm queryData = this.getQueryData("IN");
			// out("得到在院查询的参数"+queryData);
			if (this.getRunFlg().equals("INWCHECK")
					|| this.getRunFlg().equals("INWEXE")) {
				// 得到查询SQL
				String sqlStr = this.creatInwQuerySQL(queryData, "IN");
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				// 判断是否是值班医生
				boolean stationFlg = isKeepWatch();
				// 得到查询SQL
				String sqlStr = createODIQuerySQL(queryData, "IN", stationFlg);
				// System.out.println("查询sql:" + sqlStr);
				if (stationFlg) {
					// 查询在院病患基本信息
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				} else {
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				}
			}
			// out("在院查询后的数据"+actionParm);
			// //如果查询为空返回
			// if (actionParm.getInt("ACTION", "COUNT") == 0) {
			// //清空Table
			// callFunction("UI|" + TABLE + "|removeRowAll");
			// return null;
			// }
			// //得到工作页签的TAG并联动查询
			// if (workPanelTag.length() != 0) {
			// this.queryDataOtherTPane(actionParm, "IN");
			// return null;
			// }
			// //设置TABLE上的数据
			// this.setTableData(actionParm, "IN");
		} else {
			// 得到出院查询的参数
			TParm queryData = this.getQueryData("OUT");
			// 判断是否是值班医生
			boolean stationFlg = isKeepWatch();
			// 得到查询SQL
			String sqlStr = createODIQuerySQL(queryData, "OUT", stationFlg);
			// System.out.println("出院查询SQL：" + sqlStr);
			if (stationFlg) {
				// 查询在院病患基本信息
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			}
			// out("在院查询后的数据" + actionParm);
			// //如果查询为空返回
			// if (actionParm.getInt("ACTION", "COUNT") == 0) {
			// //清空Table
			// callFunction("UI|" + TABLE + "|removeRowAll");
			// return;
			// }
			// //得到工作页签的TAG并联动查询
			// if (workPanelTag.length() != 0) {
			// this.queryDataOtherTPane(actionParm, "OUT");
			// return;
			// }
			// //设置TABLE上的数据
			// this.setTableData(actionParm, "OUT");
		}
		return actionParm;
	}

	/**
	 * 初始化权限
	 */
	public void onInitPopeDem() {
		// 权限可否选择科室
		if (!this.getPopedem("deptEnabled") && !this.getRunFlg().equals("OIDR")) {
			this.callFunction("UI|DEPT_CODE|setEnabled", false);
			this.callFunction("UI|DEPT_CODEOUT|setEnabled", false);
		}
		// 权限可否选择病区
		if (!this.getPopedem("stationEnabled")
				&& !this.getRunFlg().equals("OIDR")) {
			this.callFunction("UI|STATION_CODE|setEnabled", false);
			this.callFunction("UI|STATION_CODEOUT|setEnabled", false);
		}
		// 选择护士站COMBO传给护士站
		this.setInwPopedem(this.getPopedem("InwCheckEnabled"));
	}

	/**
	 * 双击事件
	 * 
	 * @param row
	 *            int
	 */
	public void onTableDoubled(int row) {
		//this.messageBox("==come in11111111=");
		if (row < 0)
			return;
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		int selType = tabPane.getSelectedIndex();
		// 0为在院页签的INDEX;1为出院页签的INDEX
		TParm parm = this.getSelectRowData(TABLE);
		if (selType == 0) {
			if (parm.getData("IN_DATE") == null
					&& parm.getValue("CASE_NO").length() == 0) {
				// 病患没有住院信息！
				// this.messageBox("E0151");
				return;
			}
			// 拿到预交金余额如果不足给提示不强制
			double rPrice = parm.getDouble("CUR_AMT");
			// 黄色警戒
			double yellowPrice = parm.getDouble("YELLOW_SIGN");
			if (rPrice <= yellowPrice) {
				if (this.messageBox("提示信息 Tips",
						"预交金余额不足！\n Paying insufficient balance gold!",
						this.YES_NO_OPTION) != 0)
					return;
			}
		}
		// 临床路径验证begin
		if (this.getRunFlg().equals("CLPCHECKITEMMAIN")
				|| this.getRunFlg().equals("CLPVARIATION")) {
			if (parm.getValue("CLNCPATH_CODE") == null
					|| "".equals(parm.getValue("CLNCPATH_CODE"))) {
				this.messageBox("该病患没有进入临床路径，请重新选择！");
				return;
			}
		}
		// 出院
		if (selType == 1) {
			if (this.getRunFlg().equals("CLPMANAGEM")) {
				this.messageBox("该病患已经出院不能进入临床路径，请重新选择！");
				return;
			}
		}
		// 临床路径验证end

		this.initOtherUi();
	}

	public void initOtherUi() {
		// 医生站
		if ("ODI".equals(this.getRunFlg())) {
			if ("en".equals(this.getLanguage())) {
				this.setTitle("IP Station");
			} else {
				this.setTitle("住院医生站");
			}
			// 判断是否加锁
			if (PatTool.getInstance().isLockPat(this.getValueString("MR_NO"))) {
				if (this.messageBox("是否解锁 Whether to unlock", PatTool
						.getInstance().getLockParmString(
								this.getValueString("MR_NO")), 0) == 0) {
					PatTool.getInstance().unLockPat(
							this.getValueString("MR_NO"));
					PatTool.getInstance().lockPat(this.getValueString("MR_NO"),
							"ODI");

				} else {
					return;
				}
			} else {
				// 加锁
				PatTool.getInstance().lockPat(this.getValueString("MR_NO"),
						"ODI");
			}
			passcheck();
			// $$==== modified by lx 2012/03/19加入1024*768医生站处理 start====$$//
			if (this.getSrceenWidth() != null
					&& this.getSrceenWidth().equals("1024")) {
				// System.out.println("is 1024.");
				this.runPane("STATIONMAIN", "odi\\ODIStationTxUI.x");
			} else {
				this.runPane("STATIONMAIN", "odi\\ODIStationUI.x");
			}
			// $$==== modified by lx 2012/03/19加入1024*768医生站处理 end====$$//

		}
		// 医生站
		if ("OIDR".equals(this.getRunFlg())) {
			//this.messageBox("===OIDR===");
			// $$==== modified by lx 2012/03/19加入1024*768会诊处理 start====$$//
			if (this.getSrceenWidth() != null
					&& this.getSrceenWidth().equals("1024")) {
				if ("en".equals(this.getLanguage())) {
					this.setTitle("IP Station");
				} else {
					this.setTitle("会诊");
				}
				this.runPane("STATIONMAIN", "odi\\ODIStationTxUI.x");

			} else {
				if ("en".equals(this.getLanguage())) {
					this.setTitle("IP Station");
				} else {
					this.setTitle("会诊");
				}
				this.runPane("STATIONMAIN", "odi\\ODIStationUI.x");
			}
			// $$==== modified by lx 2012/03/19加入1024*768会诊处理 end====$$//
		}

		// 护士站审核
		if ("INWCHECK".equals(this.getRunFlg())) {
			this.setTitle("住院护士站审核");
			this.runPane("INWSTATIONCHECK", "inw\\INWOrderCheckMain.x");
		}
		// 护士执行
		if ("INWEXE".equals(this.getRunFlg())) {
			this.setTitle("住院护士站执行");
			this.runPane("INWSTATIONEXECUTE", "inw\\INWOrderExecMain.x");
		}
		// 住院计价
		if ("IBS".equals(this.getRunFlg())) {
			this.setTitle("住院计价");
			this.runPane("IBSSTATION", "ibs\\IBSOrderm.x");
		}
		// 费用查询
		if ("IBSQUERYFEE".equals(this.getRunFlg())) {
			this.setTitle("费用查询");
			this.runPane("IBSQUERYFEESTATION", "ibs\\IBSSelOrderm.x");
		}
		// 缴费作业
		if ("IBSPAYBILL".equals(this.getRunFlg())) {
			this.setTitle("缴费作业");
			if (!checkNo()) {
				// 尚未开账请先开账!
				this.messageBox("E0014");
				return;
			}
			this.runPane("IBSCUTBILLSTATION", "bil\\BilIBSRecp.x");
		}
		// 病案管理
		if ("MRO".equals(this.getRunFlg())) {
			this.setTitle("病案管理");
			this.runPane("MROSTATION", "mro\\MRO_Chrtvetrec.x");
		}
		// 病患动态查询
		if ("ADMCHG".equals(this.getRunFlg())) {
			this.setTitle("病患动态查询");
			this.runPane("ADMCHGSTATION", "adm\\ADMQueryChgLog.x");
		}
		// 医嘱单打印
		if ("SHEET".equals(this.getRunFlg())) {
			this.setTitle("医嘱单打印");
			this.runPane("INWSHEET", "inw\\INWOrderSheetPrtAndPreView.x");
		}
		// 订餐
		if ("NSSORDER".equals(this.getRunFlg())) {
			this.setTitle("订餐");
			this.runPane("NSSORDER", "nss\\NSSOrder.x");
		}
		// 订餐缴费
		if ("NSSCHAR".equals(this.getRunFlg())) {
			this.setTitle("订餐缴费");
			this.runPane("NSSCHARGE", "nss\\NSSCharge.x");
		}

		// 临床路径准进准出
		if ("CLPMANAGEM".equals(this.getRunFlg())) {
			// System.out.println("进入临床路径准进准出");
			this.setTitle("临床路径准进准出");
			this.runPane("CLPMANAGEM", "clp\\CLPManagem.x");
		}
		// 临床路径变异分析
		if ("CLPVARIATION".equals(this.getRunFlg())) {
			// System.out.println("进入临床路径变异分析");
			this.setTitle("临床路径变异分析");
			this.runPane("CLPVARIATION", "clp\\CLPVariation.x");
		}
		// 临床路径关键诊疗项目执行
		if ("CLPCHECKITEMMAIN".equals(this.getRunFlg())) {
			// System.out.println("临床路径关键诊疗项目执行");
			this.setTitle("临床路径关键诊疗项目执行");
			this.runPane("CLPCHECKITEMMAIN", "clp\\CLPChkItemMain.x");
		}
		// 转移记录维护
		if ("TRANSHOSPLOG".equals(this.getRunFlg())) {
			// System.out.println("临床路径关键诊疗项目执行");
			this.setTitle("转移记录维护");
			this.runPane("TRANSHOSPLOG", "adm\\ADM_TRANS_LOGUI.x");
		}
		// 加入预交金
		if ("BILPAY".equals(this.getRunFlg())) {
			this.setTitle("预交金");
			this.runPane("BILPAY", "bil\\BILPay.x");
		}

		// //出入转管理
		// if("ADMTRAN".equals(this.getRunFlg())){
		// this.runPane("ADMTRANSTATION","adm\\ADMWaitTrans.x");
		// }
	}

	public boolean checkNo() {
		TParm parm = new TParm();
		parm.setData("RECP_TYPE", "IBS");
		parm.setData("CASHIER_CODE", Operator.getID());
		parm.setData("STATUS", "0");
		parm.setData("TERM_IP", Operator.getIP());
		TParm noParm = BILInvoiceTool.getInstance().selectNowReceipt(parm);
		String updateNo = noParm.getValue("UPDATE_NO", 0);
		if (updateNo == null || updateNo.length() == 0) {
			return false;
		}
		return true;
	}

	// $$==============add by lx 2012/02/07加入床头卡功能==========================$$//
	/**
	 * 床头卡
	 */
	public void onBedCard() {
		TTable table = ((TTable) this.getComponent(TABLE));

		// table.clearSelection();
		TParm parm = new TParm();
		parm = (TParm) this.openDialog("%ROOT%\\config\\inw\\INWBedCard.x");
		// this.messageBox(""+parm);

		if (parm != null) {
			this.onClear();
			this.setValue("INW_VC_CODE", "");
			// this.messageBox("case no"+parm.getValue("CASE_NO"));
			//
			// String strCaseNo=parm.getValue("CASE_NO");
			String strIPDNo = parm.getValue("IPD_NO");
			this.setValue("INW_DEPT_CODE", "");
			this.setValue("INW_STATION_CODE", parm.getValue("STATION_CODE"));
			this.setValue("MR_NO", parm.getValue("MR_NO"));
			this.setValue("IPD_NO", strIPDNo);
			// this.getTCheckBox("ALLO_FLG").setSelected(false);
			this.onQuery();
			// 遍历表格记录，取行数；
			// 存在
			int currentRow = 0;
			table.setSelectedRow(currentRow);
			onTableClicke(currentRow);
			onTableDoubled(currentRow);
			//
		}

	}

	// $$==============add by lx
	// 2012/02/07加入床头卡功能END==========================$$//

	/**
	 * 病患信息
	 */
	public void onPatInfo() {

		TParm parm = this.getSelectRowData(TABLE);
		parm.setData("SAVE_FLG", this.getPopedem("admChangeDr"));
		this.openDialog("%ROOT%\\config\\adm\\AdmPatinfo.x", parm);

	}

	/**
	 * TTablePanel切换事件
	 */
	public void onChangedPanel() {
		// this.messageBox("==onChangedPanel==");
		Timestamp sysDate = SystemTool.getInstance().getDate();
		// 清空Table
		callFunction("UI|" + TABLE + "|removeRowAll");
		// SHIBL 20120425 MODIFY
		if (this.getRunFlg().equals("INWCHECK")
				|| this.getRunFlg().equals("INWEXE")
				|| this.getRunFlg().equals("SHEET")) {
			// 设置科室(出院)
			this.setValue("INW_DEPT_CODE", "");
			// 注解 待Operator完善在给默认值(设置病区在院)
			this.setValue("INW_STATION_CODE", Operator.getStation());
			// 经治医师（护士站）
			this.setValue("INW_VC_CODE", "");
			// 注解 待Operator完善在给默认值(设置病区出院)
			this.setValue("STATION_CODEOUT", Operator.getStation());
		} else {
			// 设置科室(在院)
			this.setValue("DEPT_CODE", Operator.getDept());
			// 设置科室(出院)
			this.setValue("DEPT_CODEOUT", Operator.getDept());
			// 注解 待Operator完善在给默认值(设置病区在院)
			this.setValue("STATION_CODE", Operator.getStation());
			// 注解 待Operator完善在给默认值(设置病区出院)
			this.setValue("STATION_CODEOUT", Operator.getStation());
		}
		// 默认设置在院页签的住院日期
		this.setValue("ADM_DATE", sysDate);
		// 默认设置起始日期
		this.setValue("START_DATE", sysDate);
		// 默认设置终止日期
		this.setValue("END_DATE", StringTool.rollDate(sysDate, 1));
		// 默认设置起始日期
		this.setValue("START_DATEOUT", StringTool.rollDate(sysDate, -7));
		// 默认设置终止日期
		this.setValue("END_DATEOUT", StringTool.rollDate(sysDate, 1));
		// 默认设置出院页签的入院起迄
		// this.setValue("ADM_DATEOUT", SystemTool.getInstance().getDate());
		// 设置人数可编辑状态(在院)
		callFunction("UI|PRESON_NUM|setEnabled", false);
		// 设置人数可编辑状态(出院)
		callFunction("UI|PRESON_NUMOUT|setEnabled", false);
		// 清空相关控件信息(在院)
		this
				.clearValue("BED_NO;IPD_NO;MR_NO;PAT_NAME;SEX;SERVICE_LEVELIN;WEIGHT;TOTAL_AMT;PAY_INS;YJJ_PRICE;GREED_PRICE;YJYE_PRICE;PRESON_NUM;DIE_CODE");
		// 清空相关控件信息(出院)
		this
				.clearValue("BILL_STATUS;IPD_NOOUT;MR_NOOUT;PAT_NAMEOUT;PERSON_NUMOUT;SERVICE_LEVELOUT;DIE_CODE_OUT");
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		int selType = tabPane.getSelectedIndex();
		switch (selType) {
		case 0:

			// TABLE在院
			this
					.getTTable(TABLE)
					.setHeader(
							"床号,80;姓名,80;性别,60,SEX;年龄,80;入院日期,120,Timestamp;住院天数,80;经治医师,100,USER_ID;最新诊断,120;护理等级,120,NURSING_CLASS;病情状态,120,PATIENT_STATUS;付款方式,80,CTZ_CODE;预交金余额,120,double;临床路径,100,CLNCPATH_CODE;饮食情况,100,DIE_CODE;病案号,100;住院号,100;病案审核,100,MRO_CHAT_FLG;服务等级,140,SERVICE_LEVELOUT");
			this
					.getTTable(TABLE)
					.setEnHeader(
							"BedNo;Name;Gender;Age;Admission Date;Days;VsDR;Latest Diagnosis;Nurse Level;Pat Condition;PayType;Deposit Balance;clncPath;MrNo;IpdNo;Mr Check;Service Level");
			this
					.getTTable(TABLE)
					.setParmMap(
							"BED_NO_DESC;PAT_NAME;SEX_CODE;AGE;IN_DATE;DAYNUM;VS_DR_CODE;MAINDIAG;NURSING_CLASS;PATIENT_STATUS;CTZ1_CODE;CUR_AMT;CLNCPATH_CODE;DIE_CONDITION;MR_NO;IPD_NO;MRO_CHAT_FLG;SERVICE_LEVEL;TOTAL_AMT;TOTAL_BILPAY;GREENPATH_VALUE;RED_SIGN;YELLOW_SIGN;STOP_BILL_FLG;BED_NO;STATION_CODE;DEPT_CODE;VS_DR_CODE ;HEIGHT;WEIGHT;PAY_INS;CASE_NO;IN_DATE;BIRTH_DATE;POST_CODE;ADDRESS;COMPANY_DESC;TEL_HOME;IDNO;PAT_NAME1;ICD_CODE");
			this
					.getTTable(TABLE)
					.setColumnHorizontalAlignmentData(
							"0,Left;1,Left;2,Left;3,Left;4,Left;5,Right;6,Left;7,Left;8,Left;9,left;10,left;11,Right;12,left;13,right;14,right;15,left;16,left;17,left;");
			break;
		case 1:

			// TABLE出院
			this
					.getTTable(TABLE)
					.setHeader(
							"床号,80;姓名,80;性别,60,SEX;年龄,80;入院日期,120,Timestamp;出院日期,120,Timestamp;住院天数,80;出院诊断,120;付款方式,100,CTZ_CODE;账务状态,120,BILL_STATUS;临床路径,100,CLNCPATH_CODE_OUT;饮食情况,100,DIE_CODE_OUT;病案号,100;住院号,100;病案审核,140,MRO_CHAT_FLG;服务等级,140,SERVICE_LEVELOUT");
			this
					.getTTable(TABLE)
					.setEnHeader(
							"BedNo;Name;Gender;Age;Admission Date;Discharge Date;Days;Discharge Diagnosis;PayType;Financial Status;CLNCPATH;MrNo;IpdNo;Mr Check;Service Level");
			this
					.getTTable(TABLE)
					.setParmMap(
							"BED_NO_DESC;PAT_NAME;SEX_CODE;AGE;IN_DATE;DS_DATE;DAYNUM;MAINDIAG;CTZ1_CODE;BILL_STATUS;CLNCPATH_CODE;DIE_CONDITION;MR_NO;IPD_NO;MRO_CHAT_FLG;SERVICE_LEVEL;TOTAL_AMT;TOTAL_BILPAY;GREENPATH_VALUE;RED_SIGN;YELLOW_SIGN;STOP_BILL_FLG;BED_NO;STATION_CODE;DEPT_CODE;VS_DR_CODE;HEIGHT;WEIGHT;CASE_NOOUT;IN_DATE;BIRTH_DATE;POST_CODE;ADDRESS;COMPANY_DESC;TEL_HOME;IDNO;PAT_NAME1;ICD_CODE");
			this
					.getTTable(TABLE)
					.setColumnHorizontalAlignmentData(
							"0,Left;1,Left;2,Left;3,Left;4,Left;5,left;6,right;7,Left;8,Left;9,left;10,left;11,Right;12,Right;13,Right;14,left;15,left;16,left;");
			break;
		}
	}

	/**
	 * 得到TTable
	 * 
	 * @param tag
	 *            String
	 * @return TTable
	 */
	public TTable getTTable(String tag) {
		return (TTable) this.getComponent(tag);
	}

	/**
	 * 清空
	 */
	public void onClear() {
		 //this.messageBox("清空begin");
		// 得到TabbedPane控件

		Timestamp sysDate = SystemTool.getInstance().getDate();
		// 清空Table
		callFunction("UI|" + TABLE + "|removeRowAll");
		if (this.getRunFlg().equals("INWCHECK")
				|| this.getRunFlg().equals("INWEXE")
				|| this.getRunFlg().equals("SHEET")) {
			// 设置科室(出院)
			this.setValue("INW_DEPT_CODE", "");
			// 注解 待Operator完善在给默认值(设置病区在院)
			this.setValue("INW_STATION_CODE", Operator.getStation());
			// 经治医师（护士站）
			this.setValue("INW_VC_CODE", "");
		} else {
			// 设置科室(在院)
			this.setValue("DEPT_CODE", Operator.getDept());
			// 设置科室(出院)
			this.setValue("DEPT_CODEOUT", Operator.getDept());
			// 注解 待Operator完善在给默认值(设置病区在院)
			this.setValue("STATION_CODE", Operator.getStation());
			// 注解 待Operator完善在给默认值(设置病区出院)
			this.setValue("STATION_CODEOUT", Operator.getStation());
		}
		// 默认设置在院页签的住院日期
		this.setValue("ADM_DATE", sysDate);
		// 默认设置起始日期
		this.setValue("START_DATE", sysDate);
		// 默认设置终止日期
		this.setValue("END_DATE", sysDate);
		// 默认设置出院页签的住院日期
		this.setValue("ADM_DATEOUT", sysDate);
		
		// 设置人数可编辑状态(在院)
		callFunction("UI|PRESON_NUM|setEnabled", false);
		// 设置人数可编辑状态(出院)
		callFunction("UI|PRESON_NUMOUT|setEnabled", false);
		// 设置页签为在院
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		int selType = tabPane.getSelectedIndex();
		
		this.setValue("VC_CODE", "");
		// this.messageBox("selType"+selType);

		this.setValue("DIE_CODE", "");
		this.setValue("DIE_CODE_OUT", "");
		// // 表示页签选择的状态(在院)
		// tabPane.setSelectedIndex(0);
		// 清空相关控件信息(在院)
		this
				.clearValue("BED_NO;MR_NO;PAT_NAME;SEX;SERVICE_LEVELIN;WEIGHT;YELLOW;PRESON_NUM;YJJ_PRICE;YJYE_PRICE;GREED_PRICE;CASE_NO;IPD_NO;TOTAL_AMT");
		// 清空相关控件信息(出院)
		this
				.clearValue("BED_NOOUT;MR_NOOUT;PAT_NAMEOUT;PRESON_NUMOUT;CASE_NOOUT;IPD_NOOUT;SERVICE_LEVELOUT;DEPT_CODEOUT;VC_CODEOUT");
		// 移除工作页面
		this.onClosePanel();
		// out("清空end");
	}

	/**
	 * 和其他页面联动查询
	 * 
	 * @param parm
	 *            TParm
	 * @param type
	 *            String
	 */
	public void queryDataOtherTPane(TParm parm, String type) {
		// System.out.println("联动查询结果"+parm);
		TParm action = new TParm();
		if (workPanelTag.toUpperCase().equals("INWSTATIONCHECK")
				|| workPanelTag.toUpperCase().equals("INWSTATIONEXECUTE")
				|| workPanelTag.toUpperCase().equals("INWSHEET")) {
			if ("IN".equals(type)) {
				// 在院
				action.setData("INW", "CASE_NO", parm.getData("CASE_NO", 0));
				action.setData("INW", "STATION_CODE", parm.getData(
						"STATION_CODE", 0));
				action.setData("INW", "POPEDEM", this.isInwPopedem());
				// 身份1
				action
						.setData("INW", "CTZ1_CODE", parm.getData("CTZ1_CODE",
								0));
				// 身份2
				action
						.setData("INW", "CTZ2_CODE", parm.getData("CTZ2_CODE",
								0));
				// 身份3
				action
						.setData("INW", "CTZ3_CODE", parm.getData("CTZ3_CODE",
								0));
				// 姓名
				action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
			} else {
				// 出院
				action.setData("INW", "CASE_NO", parm.getData("CASE_NO", 0));
				action.setData("INW", "STATION_CODE", parm.getData(
						"STATION_CODE", 0));
				action.setData("INW", "POPEDEM", this.isInwPopedem());
				// 身份1
				action
						.setData("INW", "CTZ1_CODE", parm.getData("CTZ1_CODE",
								0));
				// 身份2
				action
						.setData("INW", "CTZ2_CODE", parm.getData("CTZ2_CODE",
								0));
				// 身份3
				action
						.setData("INW", "CTZ3_CODE", parm.getData("CTZ3_CODE",
								0));
				// 姓名
				action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
			}
			// 重新赋值参数必须重新加载但会判断是否已经加载如果已经加载则只赋值初始化参数(INW无意义只要不是空字符串就可以)
			getTPanel().addItem(workPanelTag, "INW", action, false);
		}
		// //医生站
		// if(workPanelTag.toUpperCase().equals("STATIONMAIN")){
		// if ("IN".equals(type)) {
		// //在院
		// action.setData("ODI", "CASE_NO",parm.getData("CASE_NO",0));
		// action.setData("ODI", "VS_DR_CODE", this.getValue("VC_CODE"));
		// action.setData("ODI", "BED_NO", this.getValue("BED_NO"));
		// action.setData("ODI", "IPD_NO", parm.getData("IPD_NO",0));
		// action.setData("ODI", "MR_NO", this.getValue("MR_NO"));
		// action.setData("ODI", "PAT_NAME", this.getValue("PAT_NAME"));
		// String orgCode =
		// this.getOrgCode(this.getValue("STATION_CODE").toString(),this.getValue("DEPT_CODE").toString());
		// //拿到对应药房
		// action.setData("ODI", "ORG_CODE", orgCode);
		// action.setData("ODI", "STATION_CODE",this.getValue("STATION_CODE"));
		// action.setData("ODI", "DEPT_CODE", this.getValue("DEPT_CODE"));
		// //停止划价
		// action.setData("ODI", "STOP_BILL_FLG",parm.getData("STOP_BILL_FLG"));
		// }
		// else {
		// //出院
		// action.setData("ODI", "CASE_NO",parm.getData("CASE_NO",0));
		// action.setData("ODI", "VS_DR_CODE", this.getValue("VC_CODE"));
		// action.setData("ODI", "BED_NO", this.getValue("BED_NO"));
		// action.setData("ODI", "IPD_NO", parm.getData("IPD_NO",0));
		// action.setData("ODI", "MR_NO", this.getValue("MR_NO"));
		// action.setData("ODI", "PAT_NAME", this.getValue("PAT_NAME"));
		// String orgCode =
		// this.getOrgCode(this.getValue("STATION_CODE").toString(),this.getValue("DEPT_CODE").toString());
		// //拿到对应药房
		// action.setData("ODI", "ORG_CODE", orgCode);
		// action.setData("ODI", "STATION_CODE",this.getValue("STATION_CODE"));
		// action.setData("ODI", "DEPT_CODE", this.getValue("DEPT_CODE"));
		// //停止划价
		// action.setData("ODI", "STOP_BILL_FLG",parm.getData("STOP_BILL_FLG"));
		// }
		// //重新赋值参数必须重新加载但会判断是否已经加载如果已经加载则只赋值初始化参数(ODI无意义只要不是空字符串就可以)
		// getTPanel().addItem(workPanelTag,"ODI",action,false);
		// }
		// 计价
		if (workPanelTag.toUpperCase().equals("IBSSTATION")) {
			// 出院
			action.setData("IBS", "CASE_NO", parm.getData("CASE_NO", 0));
			action.setData("IBS", "VS_DR_CODE", this.getValue("VC_CODE"));
			action.setData("IBS", "IPD_NO", parm.getData("IPD_NO", 0));
			action.setData("IBS", "MR_NO", this.getValue("MR_NO"));
			action.setData("IBS", "PAT_NAME", this.getValue("PAT_NAME"));
			String orgCode = this.getOrgCode(this.getValue("STATION_CODE")
					.toString(), this.getValue("DEPT_CODE").toString());
			// 拿到对应药房
			action.setData("IBS", "ORG_CODE", orgCode);
			action
					.setData("IBS", "STATION_CODE", this
							.getValue("STATION_CODE"));
			action.setData("IBS", "DEPT_CODE", this.getValue("DEPT_CODE"));
			// 停止划价
			action.setData("IBS", "STOP_BILL_FLG", parm
					.getData("STOP_BILL_FLG"));
			// 床号
			action.setData("IBS", "BED_NO", this.getValue("BED_NO"));
			// 身份1
			action.setData("IBS", "CTZ1_CODE", parm.getData("CTZ1_CODE", 0));
			// 身份2
			action.setData("IBS", "CTZ2_CODE", parm.getData("CTZ2_CODE", 0));
			// 身份3
			action.setData("IBS", "CTZ3_CODE", parm.getData("CTZ3_CODE", 0));
			// 红色警戒
			action.setData("IBS", "RED_SIGN", parm.getData("RED_SIGN", 0));
			// 黄色警戒
			action
					.setData("IBS", "YELLOW_SIGN", parm.getData("YELLOW_SIGN",
							0));
			// 绿色通道
			action.setData("IBS", "GREENPATH_VALUE", parm.getData(
					"GREENPATH_VALUE", 0));
			// 医疗总费用
			action.setData("IBS", "TOTAL_AMT", parm.getData("TOTAL_AMT", 0));
			getTPanel().addItem(workPanelTag, "IBS", action, false);
		}
		// 病案首页
		if (workPanelTag.toUpperCase().equals("MROSTATION")) {
			action.setData("MRO", "CASE_NO", parm.getData("CASE_NO", 0));
		}
		// ADM病患动态查询
		if (workPanelTag.toUpperCase().equals("ADMCHGSTATION")) {
			action.setData("ADM", "CASE_NO", parm.getData("CASE_NO", 0));
			action.setData("ADM", "MR_NO", parm.getData("MR_NO", 0));
			action.setData("ADM", "IPD_NO", parm.getData("IPD_NO", 0));
			action.setData("ADM", "ADM_DATE", parm.getData("IN_DATE", 0));
		}
		if (workPanelTag.toUpperCase().equals("CLPMANAGEM")) {
			action.setData("CLPMANAGEM", "CASE_NO", parm.getData("CASE_NO", 0));
			getTPanel().addItem(workPanelTag, "CLPMANAGEM", action, false);
		}
		// 加预加金
		if (workPanelTag.toUpperCase().equals("BILPAY")) {
			action.setData("BILPAY", "CASE_NO", parm.getData("CASE_NO", 0));
			getTPanel().addItem(workPanelTag, "BILPAY", action, false);
		}
	}

	/**
	 * 住院医生站查询
	 */
	public void onQuery() {
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		int selType = tabPane.getSelectedIndex();
		// 0为在院页签的INDEX;1为出院页签的INDEX
		if (selType == 0) {
			// 得到在院查询的参数
			TParm queryData = this.getQueryData("IN");
			TParm actionParm = new TParm();
			// out("得到在院查询的参数"+queryData);
			if (this.getRunFlg().equals("INWCHECK")
					|| this.getRunFlg().equals("INWEXE")
					|| this.getRunFlg().equals("SHEET")) {
				// 得到查询SQL
				String sqlStr = creatInwQuerySQL(queryData, "IN");
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				// 判断是否是值班医生
				boolean stationFlg = isKeepWatch();
				// 得到查询SQL
				String sqlStr = createODIQuerySQL(queryData, "IN", stationFlg);
				// System.out.println("查询sql:" + sqlStr);
				if (stationFlg) {
					// 查询在院病患基本信息
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				} else {
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				}
			}
			// out("在院查询后的数据"+actionParm);
			// 如果查询为空返回
			if (actionParm.getInt("ACTION", "COUNT") == 0) {
				// 清空Table
				callFunction("UI|" + TABLE + "|removeRowAll");
				return;
			}
			// 得到工作页签的TAG并联动查询
			if (workPanelTag.length() != 0) {
				this.queryDataOtherTPane(actionParm, "IN");
				return;
			}
			// 设置TABLE上的数据
			this.setTableData(actionParm, "IN");
		} else {
			// 得到出院查询的参数
			TParm queryData = this.getQueryData("OUT");
			// 判断是否是值班医生
			boolean stationFlg = isKeepWatch();
			TParm actionParm = new TParm();
			// 得到查询SQL
			String sqlStr = createODIQuerySQL(queryData, "OUT", stationFlg);
			// System.out.println("出院查询SQL：" + sqlStr);
			if (stationFlg) {
				// 查询在院病患基本信息
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			}
			// out("在院查询后的数据" + actionParm);
			// 如果查询为空返回
			if (actionParm.getInt("ACTION", "COUNT") == 0) {
				// 清空Table
				callFunction("UI|" + TABLE + "|removeRowAll");
				return;
			}
			// 得到工作页签的TAG并联动查询
			if (workPanelTag.length() != 0) {
				this.queryDataOtherTPane(actionParm, "OUT");
				return;
			}
			// 设置TABLE上的数据
			this.setTableData(actionParm, "OUT");
		}
	}

	/**
	 * 根据病案号查询
	 */
	public void onQueryForMrNo() {
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		int selType = tabPane.getSelectedIndex();
		// 0为在院页签的INDEX;1为出院页签的INDEX
		if (selType == 0) {
			// 得到在院查询的参数
			TParm queryData = this.getQueryData("IN");
			TParm actionParm = new TParm();
			// out("得到在院查询的参数"+queryData);
			if (this.getRunFlg().equals("INWCHECK")
					|| this.getRunFlg().equals("INWEXE")
					|| this.getRunFlg().equals("SHEET")) {
				// 得到查询SQL
				String sqlStr = creatInwQuerySqlForMrNo(queryData, "IN");
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				// 判断是否是值班医生
				boolean stationFlg = isKeepWatch();
				// 得到查询SQL
				String sqlStr = createODIQuerySqlForMrNo(queryData, "IN",
						stationFlg);
				// System.out.println("查询sql:" + sqlStr);
				if (stationFlg) {
					// 查询在院病患基本信息
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				} else {
					actionParm = new TParm(this.getDBTool().select(sqlStr));
				}
			}
			// out("在院查询后的数据"+actionParm);
			// 如果查询为空返回
			if (actionParm.getInt("ACTION", "COUNT") == 0) {
				// 清空Table
				callFunction("UI|" + TABLE + "|removeRowAll");
				return;
			}
			// 得到工作页签的TAG并联动查询
			if (workPanelTag.length() != 0) {
				this.queryDataOtherTPane(actionParm, "IN");
				return;
			}
			// 设置TABLE上的数据
			this.setTableData(actionParm, "IN");
		} else {
			// 得到出院查询的参数
			TParm queryData = this.getQueryData("OUT");
			// 判断是否是值班医生
			boolean stationFlg = isKeepWatch();
			TParm actionParm = new TParm();
			// 得到查询SQL
			String sqlStr = createODIQuerySqlForMrNo(queryData, "OUT",
					stationFlg);
			// System.out.println("出院查询SQL：" + sqlStr);
			if (stationFlg) {
				// 查询在院病患基本信息
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			} else {
				actionParm = new TParm(this.getDBTool().select(sqlStr));
			}
			// out("在院查询后的数据" + actionParm);
			// 如果查询为空返回
			if (actionParm.getInt("ACTION", "COUNT") == 0) {
				// 清空Table
				callFunction("UI|" + TABLE + "|removeRowAll");
				return;
			}
			// 得到工作页签的TAG并联动查询
			if (workPanelTag.length() != 0) {
				this.queryDataOtherTPane(actionParm, "OUT");
				return;
			}
			// 设置TABLE上的数据
			this.setTableData(actionParm, "OUT");
		}
	}

	/**
	 * 护士查询
	 * 
	 * @param parm
	 *            TParm
	 * @param type
	 *            String
	 * @return String
	 */
	public String creatInwQuerySQL(TParm parm, String type) {
		String sql = "";
		// 占床注记ALLO_FLG
		String alloFlg = this.getTCheckBox("ALLO_FLG").isSelected() ? " AND A.ALLO_FLG='Y' AND B.CANCEL_FLG<>'Y' AND A.BED_STATUS='1' "
				: "";
		// 病区
		String stationStr = "";
		if ("IN".equals(type)) {
			stationStr = " AND A.STATION_CODE='"
					+ parm.getValue("STATION_CODE") + "'";
		} else {
			stationStr = " AND B.STATION_CODE='"
					+ parm.getValue("STATION_CODE") + "'";
		}
		// 科室
		String deptCode = "";
		if ("IN".equals(type)) {
			deptCode = parm.getValue("DEPT_CODE").length() == 0 ? ""
					: " AND B.DEPT_CODE='" + parm.getValue("DEPT_CODE") + "'";
		} else {
			deptCode = parm.getValue("DEPT_CODE").length() == 0 ? ""
					: " AND A.DEPT_CODE='" + parm.getValue("DEPT_CODE") + "'";
		}
		// 账务状态
		String billStatus = "";
		if (!"IN".equals(type)) {
			billStatus = parm.getValue("BILL_STATUS").length() == 0 ? ""
					: " AND A.BILL_STATUS='" + parm.getValue("BILL_STATUS")
							+ "'";
		}
		// ================liming modify 20120217 start
		String vsDoctor = "";
		if ("IN".equals(type)) {
			vsDoctor = parm.getValue("VC_CODE").length() == 0 ? ""
					: " AND B.VS_DR_CODE='" + parm.getValue("VC_CODE") + "'";
		}
		// ================liming modify 20120217 end

		// 开始时间
		String startDate = StringTool.getString((Timestamp) parm
				.getData("START_DATE"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDate = StringTool.getString((Timestamp) parm
				.getData("END_DATE"), "yyyyMMdd");
		// 开始时间
		String startDateOut = StringTool.getString((Timestamp) parm
				.getData("START_DATEOUT"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDateOut = StringTool.getString((Timestamp) parm
				.getData("END_DATEOUT"), "yyyyMMdd");
		// 在院
		if (type.equals("IN")) {
			// ===========pangben modify 20110512 start
			String region = "";
			if (null != Operator.getRegion()
					&& Operator.getRegion().length() > 0) {
				region = " AND B.REGION_CODE='" + Operator.getRegion() + "' ";
			}
			// ===========pangben modify 20110512 stop

			if (parm.getValue("CASE_NO").length() != 0) {
				sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
						+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
						+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS"
						+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO(+)"
						+ " AND A.CASE_NO=B.CASE_NO(+)"
						+ " AND A.MR_NO = B.MR_NO(+)"
						+ " AND A.MR_NO=C.MR_NO(+)"
						+ " AND A.ACTIVE_FLG='Y'"
						+ " AND B.DS_DATE IS NULL"
						+ alloFlg
						+ stationStr
						+ region
						+ vsDoctor
						+ deptCode
						+ // =====pangben modify 20110512
						" AND B.MAINDIAG = D.ICD_CODE(+)"
						+ " AND B.CASE_NO='"
						// + parm.getValue("CASE_NO") + "'" +
						// " ORDER BY A.BED_NO";
						+ parm.getValue("CASE_NO")
						+ "'"
						+ " ORDER BY A.BED_NO_DESC";
				// System.out.println("sql3::" + sql);
			} else {
				sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
						+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
						+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS"
						+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO(+)"
						+ " AND A.CASE_NO=B.CASE_NO(+)"
						+ " AND A.MR_NO = B.MR_NO(+)"
						+ " AND A.MR_NO=C.MR_NO(+)"
						+ " AND A.ACTIVE_FLG='Y'"
						+ " AND B.DS_DATE IS NULL"
						+ alloFlg
						+ stationStr
						+ region + vsDoctor + deptCode + // =====pangben modify
						// 20110512
						" AND B.MAINDIAG = D.ICD_CODE(+)"
						// + " ORDER BY A.BED_NO";
						+ " ORDER BY A.BED_NO DESC";
				// System.out.println("sql4::" + sql);
			}
			// 出院
		} else {
			// ===========pangben modify 20110512 start
			String region = "";
			if (null != Operator.getRegion()
					&& Operator.getRegion().length() > 0) {
				region = " AND A.REGION_CODE='" + Operator.getRegion() + "' ";
			}
			// ===========pangben modify 20110512 stop

			if (parm.getValue("CASE_NO").length() != 0) {
				sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
						+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
						+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS"
						+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO"
						+ " AND A.MR_NO=C.MR_NO"
						+ " AND A.CANCEL_FLG<>'Y'"
						+ " AND A.DS_DATE IS NOT NULL"
						+ " AND (A.DS_DATE BETWEEN TO_DATE('"
						+ startDateOut
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDateOut
						+ "','YYYYMMDD') "
						+ " OR A.IN_DATE BETWEEN TO_DATE('"
						+ startDate
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDate
						+ "','YYYYMMDD'))"
						+ stationStr
						+ " AND A.MAINDIAG = D.ICD_CODE(+)"
						+ deptCode
						+ region
						+ // ============pangben modify 20110512
						" AND A.CASE_NO='" + parm.getValue("CASE_NO") + "'"
						// + billStatus + " ORDER BY A.BED_NO";
						+ billStatus + " ORDER BY A.BED_NO_DESC";
				// System.out.println("sql5::"+sql);
			} else {
				sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
						+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
						+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS"
						+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO"
						+ " AND A.MR_NO=C.MR_NO"
						+ " AND A.CANCEL_FLG<>'Y'"
						+ " AND A.DS_DATE IS NOT NULL"
						+ " AND (A.DS_DATE BETWEEN TO_DATE('"
						+ startDateOut
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDateOut
						+ "','YYYYMMDD') "
						+ " OR A.IN_DATE BETWEEN TO_DATE('"
						+ startDate
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDate
						+ "','YYYYMMDD'))"
						+ stationStr
						+ " AND A.MAINDIAG = D.ICD_CODE(+)"
						+ deptCode
						+ region
						+ // ============pangben modify 20110512
						// billStatus + " ORDER BY A.BED_NO";
						billStatus + " ORDER BY A.BED_NO_DESC";
				// System.out.println("sql6::"+sql);
			}
		}
		return sql;
	}

	public String creatInwQuerySqlForMrNo(TParm parm, String type) {
		String sql = "";
		// 占床注记ALLO_FLG
		String alloFlg = this.getTCheckBox("ALLO_FLG").isSelected() ? " AND A.ALLO_FLG='Y' AND B.CANCEL_FLG<>'Y' AND A.BED_STATUS='1' "
				: "";
		// 账务状态
		String billStatus = "";
		if (!"IN".equals(type)) {
			billStatus = parm.getValue("BILL_STATUS").length() == 0 ? ""
					: " AND A.BILL_STATUS='" + parm.getValue("BILL_STATUS")
							+ "'";
		}
		// 开始时间
		String startDate = StringTool.getString((Timestamp) parm
				.getData("START_DATE"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDate = StringTool.getString((Timestamp) parm
				.getData("END_DATE"), "yyyyMMdd");
		// 开始时间
		String startDateOut = StringTool.getString((Timestamp) parm
				.getData("START_DATEOUT"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDateOut = StringTool.getString((Timestamp) parm
				.getData("END_DATEOUT"), "yyyyMMdd");
		// 在院
		if (type.equals("IN")) {
			String region = "";
			if (null != Operator.getRegion()
					&& Operator.getRegion().length() > 0) {
				region = " AND B.REGION_CODE='" + Operator.getRegion() + "' ";
			}
			if (parm.getValue("CASE_NO").length() != 0) {
				sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
						+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
						+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS"
						+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO(+)"
						+ " AND A.CASE_NO=B.CASE_NO(+)"
						+ " AND A.MR_NO = B.MR_NO(+)"
						+ " AND A.MR_NO=C.MR_NO(+)"
						+ " AND A.ACTIVE_FLG='Y'"
						+ " AND B.DS_DATE IS NULL"
						+ alloFlg
						+ region
						+ // =====pangben modify 20110512
						" AND B.MAINDIAG = D.ICD_CODE(+)"
						+ " AND B.CASE_NO='"
						+ parm.getValue("CASE_NO") + "'" + " ORDER BY A.BED_NO";
				// System.out.println("sql3::" + sql);
			} else {
				sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
						+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
						+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS"
						+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO(+)"
						+ " AND A.CASE_NO=B.CASE_NO(+)"
						+ " AND A.MR_NO = B.MR_NO(+)"
						+ " AND A.MR_NO=C.MR_NO(+)"
						+ " AND A.ACTIVE_FLG='Y'"
						+ " AND B.DS_DATE IS NULL"
						+ alloFlg
						+ region
						+ // =====pangben modify 20110512
						" AND B.MAINDIAG = D.ICD_CODE(+)"
						+ " ORDER BY A.BED_NO";
				// System.out.println("sql4::" + sql);
			}
			// 出院
		} else {
			// ===========pangben modify 20110512 start
			String region = "";
			if (null != Operator.getRegion()
					&& Operator.getRegion().length() > 0) {
				region = " AND A.REGION_CODE='" + Operator.getRegion() + "' ";
			}
			// ===========pangben modify 20110512 stop

			if (parm.getValue("CASE_NO").length() != 0) {
				sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
						+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
						+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS"
						+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO"
						+ " AND A.MR_NO=C.MR_NO"
						+ " AND A.CANCEL_FLG<>'Y'"
						+ " AND A.DS_DATE IS NOT NULL"
						+ " AND (A.DS_DATE BETWEEN TO_DATE('"
						+ startDateOut
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDateOut
						+ "','YYYYMMDD') "
						+ " OR A.IN_DATE BETWEEN TO_DATE('"
						+ startDate
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDate
						+ "','YYYYMMDD'))"
						+ " AND A.MAINDIAG = D.ICD_CODE(+)"
						+ region
						+ // ============pangben modify 20110512
						" AND A.CASE_NO='"
						+ parm.getValue("CASE_NO")
						+ "'"
						+ billStatus + " ORDER BY A.BED_NO";
				// System.out.println("sql5::"+sql);
			} else {
				sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
						+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
						+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
						+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
						+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS"
						+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
						+ " WHERE A.BED_NO=B.BED_NO"
						+ " AND A.MR_NO=C.MR_NO"
						+ " AND A.CANCEL_FLG<>'Y'"
						+ " AND A.DS_DATE IS NOT NULL"
						+ " AND (A.DS_DATE BETWEEN TO_DATE('"
						+ startDateOut
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDateOut
						+ "','YYYYMMDD') "
						+ " OR A.IN_DATE BETWEEN TO_DATE('"
						+ startDate
						+ "','YYYYMMDD') AND TO_DATE('"
						+ endDate
						+ "','YYYYMMDD'))"
						+ " AND A.MAINDIAG = D.ICD_CODE(+)"
						+ region + // ============pangben modify 20110512
						billStatus + " ORDER BY A.BED_NO";
				// System.out.println("sql6::"+sql);
			}
		}
		return sql;
	}

	/**
	 * 生成ODI医生站SQL
	 * 
	 * @param parm
	 *            TParm 查询参数
	 * @param type
	 *            String 入出院标记
	 * @param flg
	 *            boolean UI标记()
	 * @return String
	 */
	public String createODIQuerySQL(TParm parm, String type, boolean flg) {
		//this.messageBox("come in");
		// SQL
		String sql = "";
		// 占床注记ALLO_FLG
		String alloFlg = this.getTCheckBox("ALLO_FLG").isSelected() ? " AND A.ALLO_FLG='Y' AND B.CANCEL_FLG<>'Y' AND A.BED_STATUS='1' "
				: "";
		// 病区
		String stationStr = "";
		if ("IN".equals(type)) {
			stationStr = parm.getValue("STATION_CODE").length() == 0 ? ""
					: " AND A.STATION_CODE='" + parm.getValue("STATION_CODE")
							+ "'";
		} else {
			stationStr = parm.getValue("STATION_CODE").length() == 0 ? ""
					: " AND B.STATION_CODE='" + parm.getValue("STATION_CODE")
							+ "'";
		}
		// 科室
		String deptCode = "";
		if ("IN".equals(type)) {
			deptCode = parm.getValue("DEPT_CODE").length() == 0 ? ""
					: " AND B.DEPT_CODE='" + parm.getValue("DEPT_CODE") + "'";
		} else {
			deptCode = parm.getValue("DEPT_CODE").length() == 0 ? ""
					: " AND A.DEPT_CODE='" + parm.getValue("DEPT_CODE") + "'";
		}
		// 账务状态
		String billStatus = "";
		if (!"IN".equals(type)) {
			billStatus = parm.getValue("BILL_STATUS").length() == 0 ? ""
					: " AND A.BILL_STATUS='" + parm.getValue("BILL_STATUS")
							+ "'";
		}
		// ================liming modify 20120217 start
		String vsDoctor = "";
		if ("IN".equals(type)) {
			vsDoctor = parm.getValue("VC_CODE").length() == 0 ? ""
					: " AND B.VS_DR_CODE='" + parm.getValue("VC_CODE") + "'";
		}
		// ================liming modify 20120217 end
		
		//add by lx 2012-7-3
		String dieCode = "";
		if ("IN".equals(type)) {
			dieCode = parm.getValue("DIE_CODE").length() == 0 ? ""
					: " AND B.DIE_CONDITION='" + parm.getValue("DIE_CODE") + "'";
		}else{
			
			dieCode = parm.getValue("DIE_CODE_OUT").length() == 0 ? ""
					: " AND A.DIE_CONDITION='" + parm.getValue("DIE_CODE_OUT")
							+ "'";
		}
		//$$=============add by lx 2012/07/05 START=====================$$//
		String admDateSQL = "";
		String strADMDate = StringTool.getString((Timestamp) parm
				.getData("ADM_DATE"), "yyyyMMdd");
		if ("IN".equals(type)) {

			admDateSQL = parm.getValue("ADM_DATE").length() == 0 ? ""
					: " AND (B.IN_DATE BETWEEN TO_DATE('"
							+ strADMDate
							+ "'||'000000','YYYYMMDDHH24MISS') AND TO_DATE('"
							+ strADMDate
							+ "'||'235959','YYYYMMDDHH24MISS'))";
		} else {

			admDateSQL = parm.getValue("ADM_DATE").length() == 0 ? ""
					: " AND (A.IN_DATE BETWEEN TO_DATE('"
							+ strADMDate
							+ "'||'000000','YYYYMMDDHH24MISS') AND TO_DATE('"
							+ strADMDate
							+ "'||'235959','YYYYMMDDHH24MISS'))";
			;
		}
		//$$=============add by lx 2012/07/05 END=====================$$//
		
		
		//
		// 开始时间
		String startDate = StringTool.getString((Timestamp) parm
				.getData("START_DATE"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDate = StringTool.getString((Timestamp) parm
				.getData("END_DATE"), "yyyyMMdd");
		// 开始时间
		String startDateOut = StringTool.getString((Timestamp) parm
				.getData("START_DATEOUT"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDateOut = StringTool.getString((Timestamp) parm
				.getData("END_DATEOUT"), "yyyyMMdd");

		// System.out.println("结束时间:"+endDate);
		// System.out.println("审核:"+flg);
		if (flg) {
			// 在院
			if (type.equals("IN")) {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND B.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ stationStr
							+ region
							+ vsDoctor
							+ dieCode
							+ admDateSQL
							+ // =====pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " AND B.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "'" + " ORDER BY B.IN_DATE DESC";
					//System.out.println("sql3============================" + sql);
				} else {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ stationStr
							+ region
							+ vsDoctor
							+ dieCode
							+ admDateSQL
							+ // =====pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " ORDER BY B.IN_DATE DESC";
					//System.out.println("sql4::" + sql);
				}
				// 出院
			} else {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND A.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							/**
							 * + " AND (A.DS_DATE BETWEEN TO_DATE('" +
							 * startDateOut + "','YYYYMMDD') AND TO_DATE('" +
							 * endDateOut + "','YYYYMMDD') " +
							 * " OR A.IN_DATE BETWEEN TO_DATE('" + startDate +
							 * "','YYYYMMDD') AND TO_DATE('" + endDate +
							 * "','YYYYMMDD'))"
							 **/
							+ stationStr
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ deptCode
							+ region
							+ dieCode
							+ admDateSQL
							+ // ============pangben modify 20110512
							" AND A.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "'"
							+ billStatus + " ORDER BY A.IN_DATE DESC";
					//System.out.println("sql5::" + sql);
				} else {
					sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ stationStr
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ deptCode
							+ dieCode
							+ admDateSQL
							+ region + // ============pangben modify 20110512
							billStatus + " ORDER BY A.IN_DATE DESC";
					//System.out.println("sql6::" + sql);
				}
			}
		} else {
			// 在院
			if (type.equals("IN")) {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND B.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ stationStr
							+ region
							+ dieCode
							+ admDateSQL
							+ // ============pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " AND (B.VS_DR_CODE='"
							+ Operator.getID()
							+ "' OR ATTEND_DR_CODE='"
							+ Operator.getID()
							+ "' OR DIRECTOR_DR_CODE='"
							+ Operator.getID()
							+ "')"
							+ " AND B.CASE_NO='"
							+ parm.getValue("CASE_NO") + "' ORDER BY B.IN_DATE DESC";
					//System.out.println("sql7::" + sql);
				} else {
					sql = "SELECT  B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ stationStr
							+ region
							+ dieCode
							+ admDateSQL
							+ // ============pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " AND (B.VS_DR_CODE='"
							+ Operator.getID()
							+ "' OR ATTEND_DR_CODE='"
							+ Operator.getID()
							+ "' OR DIRECTOR_DR_CODE='"
							+ Operator.getID()
							+ "') ORDER BY B.IN_DATE DESC";
					//System.out.println("sql8::" + sql);
				}
				// 出院
			} else {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND A.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = " SELECT A.CLNCPATH_CODE,B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ stationStr
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ deptCode
							+ billStatus
							+ region
							+ dieCode
							+ admDateSQL
							+ // ===========pangben modify 20110512
							" AND A.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "' ORDER BY A.IN_DATE DESC";
					// System.out.println("sql9::"+sql);
				} else {
					sql = " SELECT A.CLNCPATH_CODE,B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ stationStr
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ deptCode
							+ dieCode
							+ admDateSQL
							+ region + // ===========pangben modify 20110512
							billStatus + " ORDER BY A.IN_DATE DESC";
					// System.out.println("sql10::"+sql);
				}
			}
		}
		//System.out.println("sql:::::::::"+sql);
		return sql;
	}

	public String createODIQuerySqlForMrNo(TParm parm, String type, boolean flg) {
		// SQL
		String sql = "";
		// 占床注记ALLO_FLG
		String alloFlg = this.getTCheckBox("ALLO_FLG").isSelected() ? " AND A.ALLO_FLG='Y' AND B.CANCEL_FLG<>'Y' AND A.BED_STATUS='1' "
				: "";
		// 账务状态
		String billStatus = "";
		if (!"IN".equals(type)) {
			billStatus = parm.getValue("BILL_STATUS").length() == 0 ? ""
					: " AND A.BILL_STATUS='" + parm.getValue("BILL_STATUS")
							+ "'";
		}
		// 开始时间
		String startDate = StringTool.getString((Timestamp) parm
				.getData("START_DATE"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDate = StringTool.getString((Timestamp) parm
				.getData("END_DATE"), "yyyyMMdd");
		// 开始时间
		String startDateOut = StringTool.getString((Timestamp) parm
				.getData("START_DATEOUT"), "yyyyMMdd");
		// System.out.println("开始时间:"+startDate);
		// 结束时间
		String endDateOut = StringTool.getString((Timestamp) parm
				.getData("END_DATEOUT"), "yyyyMMdd");

		// System.out.println("结束时间:"+endDate);
		// System.out.println("审核:"+flg);
		if (flg) {
			// 在院
			if (type.equals("IN")) {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND B.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ region
							+ // =====pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " AND B.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "'" + " ORDER BY B.IN_DATE DESC";
					// System.out.println("sql3::" + sql);
				} else {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ region
							+ // =====pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " ORDER BY B.IN_DATE DESC";
					// System.out.println("sql4::" + sql);
				}
				// 出院
			} else {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND A.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ region
							+ // ============pangben modify 20110512
							" AND A.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "'"
							+ billStatus + " ORDER BY A.IN_DATE";
					// System.out.println("sql5::"+sql);
				} else {
					sql = " SELECT A.CLNCPATH_CODE, B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ " AND A.MAINDIAG = D.ICD_CODE(+)" + region + // ============pangben
							// modify
							// 20110512
							billStatus + " ORDER BY A.IN_DATE DESC";
					// System.out.println("sql6::"+sql);
				}
			}
		} else {
			// 在院
			if (type.equals("IN")) {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND B.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = "SELECT B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ region
							+ // ============pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " AND B.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "' ORDER BY B.IN_DATE DESC";
					// System.out.println("sql7::" + sql);
				} else {
					sql = "SELECT  B.CLNCPATH_CODE,A.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,B.IN_DATE,B.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " B.CTZ1_CODE,B.MR_NO,B.IPD_NO,B.TOTAL_AMT,B.TOTAL_BILPAY,B.GREENPATH_VALUE,B.STATION_CODE,"
							+ " B.RED_SIGN,B.YELLOW_SIGN,B.STOP_BILL_FLG,A.BED_NO,B.CTZ2_CODE,B.CTZ3_CODE,B.VS_DR_CODE,"
							+ " B.DEPT_CODE,B.HEIGHT,B.WEIGHT,B.CASE_NO,B.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,B.NURSING_CLASS,B.PATIENT_STATUS,D.ICD_CODE,B.MRO_CHAT_FLG,A.ENG_DESC,B.SERVICE_LEVEL,B.BILL_STATUS,B.DIE_CONDITION"
							+ " FROM SYS_BED A,ADM_INP B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO(+)"
							+ " AND A.CASE_NO=B.CASE_NO(+)"
							+ " AND A.MR_NO = B.MR_NO(+)"
							+ " AND A.MR_NO=C.MR_NO(+)"
							+ " AND A.ACTIVE_FLG='Y'"
							+ " AND B.DS_DATE IS NULL"
							+ alloFlg
							+ region
							+ // ============pangben modify 20110512
							" AND B.MAINDIAG = D.ICD_CODE(+)"
							+ " ORDER BY B.IN_DATE DESC";
					// System.out.println("sql8::" + sql);
				}
				// 出院
			} else {
				// ===========pangben modify 20110512 start
				String region = "";
				if (null != Operator.getRegion()
						&& Operator.getRegion().length() > 0) {
					region = " AND A.REGION_CODE='" + Operator.getRegion()
							+ "' ";
				}
				// ===========pangben modify 20110512 stop

				if (parm.getValue("CASE_NO").length() != 0) {
					sql = " SELECT A.CLNCPATH_CODE,B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ " AND A.MAINDIAG = D.ICD_CODE(+)"
							+ billStatus
							+ region
							+ // ===========pangben modify 20110512
							" AND A.CASE_NO='"
							+ parm.getValue("CASE_NO")
							+ "' ORDER BY A.IN_DATE DESC";
					// System.out.println("sql9::"+sql);
				} else {
					sql = " SELECT A.CLNCPATH_CODE,B.BED_NO_DESC,C.PAT_NAME,C.SEX_CODE,C.BIRTH_DATE,A.IN_DATE,A.DS_DATE,D.ICD_CHN_DESC AS MAINDIAG,"
							+ " A.CTZ1_CODE,A.MR_NO,A.IPD_NO,A.TOTAL_AMT,A.TOTAL_BILPAY,A.GREENPATH_VALUE,A.STATION_CODE,"
							+ " A.RED_SIGN,A.YELLOW_SIGN,A.STOP_BILL_FLG,A.BED_NO,A.CTZ2_CODE,A.CTZ3_CODE,A.VS_DR_CODE,"
							+ " A.DEPT_CODE,A.HEIGHT,A.WEIGHT,A.CASE_NO,A.CUR_AMT,C.POST_CODE,C.ADDRESS,C.COMPANY_DESC,"
							+ " C.TEL_HOME,C.IDNO,C.PAT_NAME1,A.NURSING_CLASS,A.PATIENT_STATUS,D.ICD_CODE,A.MRO_CHAT_FLG,B.ENG_DESC,A.SERVICE_LEVEL,A.BILL_STATUS,A.DIE_CONDITION"
							+ " FROM ADM_INP A,SYS_BED B,SYS_PATINFO C,SYS_DIAGNOSIS D"
							+ " WHERE A.BED_NO=B.BED_NO"
							+ " AND A.MR_NO=C.MR_NO"
							+ " AND A.CANCEL_FLG<>'Y'"
							+ " AND A.DS_DATE IS NOT NULL"
							+ " AND (A.DS_DATE BETWEEN TO_DATE('"
							+ startDateOut
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDateOut
							+ "','YYYYMMDD') "
							+ " OR A.IN_DATE BETWEEN TO_DATE('"
							+ startDate
							+ "','YYYYMMDD') AND TO_DATE('"
							+ endDate
							+ "','YYYYMMDD'))"
							+ " AND A.MAINDIAG = D.ICD_CODE(+)" + region + // ===========pangben
							// modify
							// 20110512
							billStatus + " ORDER BY A.IN_DATE DESC";
					// System.out.println("sql10::"+sql);
				}
			}
		}
		// System.out.println("sql:::::::::"+sql);
		return sql;
	}

	/**
	 * 得到单选框
	 * 
	 * @param tag
	 *            String
	 * @return TCheckBox
	 */
	public TCheckBox getTCheckBox(String tag) {
		return (TCheckBox) this.getComponent(tag);
	}

	/**
	 * 查询后放入TABLE中的数据显示
	 * 
	 * @param parm
	 *            TParm 所要放入的数据
	 * @param type
	 *            String 放入数据的类别 IN为在院,OUT为出院
	 */
	public void setTableData(TParm parm, String type) {
		// 放入TABLE数据
		if (type.equals("IN")) {
			// this.messageBox("IN come in");
			// 在院
			TParm actionParm = this.filterTParmData(parm);
			// out("出院数据"+actionParm);
			// 设置TABLE数据(在院)
			callFunction("UI|" + TABLE + "|setParmValue", actionParm);
			// 设置查询数据和页面显示数据对应
			TTable tab = (TTable) this.callFunction("UI|" + TABLE + "|getThis");
			tab
					.setModifyTag("DEPT_CODE:DEPT_CODE;STATION_CODE:STATION_CODE;BED_NO:BED_NO_DESC;MR_NO:MR_NO;PAT_NAME:PAT_NAME;SEX:SEX_CODE;HEIGHT:HEIGHT;WEIGHT:WEIGHT;YELLOW:YELLOW_SIGN;ADM_DATE:IN_DATE:Timestamp;YJJ_PRICE:TOTAL_BILPAY;YJYE_PRICE:CUR_AMT;GREED_PRICE:GREENPATH_VALUE;VC_CODE:VS_DR_CODE;CASE_NO:CASE_NO;IPD_NO:IPD_NO;TOTAL_AMT:TOTAL_AMT;SERVICE_LEVELIN:SERVICE_LEVEL;CLNCPATH_CODE:CLNCPATH_CODE;CTZ_CODE:CTZ1_CODE");
			// 人数计算
			int personNum = parm.getCount("PAT_NAME");
			this.setValue("PRESON_NUM", personNum);
		} else {
			// 出院
			TParm actionParm = this.filterTParmData(parm);
			// out("出院数据"+actionParm);
			// 设置TABLE数据(出院)
			callFunction("UI|" + TABLE + "|setParmValue", actionParm);
			// 设置查询数据和页面显示数据对应
			TTable tab = (TTable) this.callFunction("UI|" + TABLE + "|getThis");
			tab
					.setModifyTag("DEPT_CODEOUT:DEPT_CODE;STATION_CODEOUT:STATION_CODE;MR_NOOUT:MR_NO;PAT_NAMEOUT:PAT_NAME;VC_CODEOUT:VS_DR_CODE;CASE_NOOUT:CASE_NO;IPD_NOOUT:IPD_NO;SERVICE_LEVELOUT:SERVICE_LEVEL;CLNCPATH_CODE_OUT:CLNCPATH_CODE");
			// 人数计算
			int personNum = parm.getCount("PAT_NAME");
			this.setValue("PRESON_NUMOUT", personNum);
		}
	}

	/**
	 * 过滤查询到的病患基本信息数据住院用于计算年龄和住院天数来放入到查询出来的TParm中
	 * 
	 * @param parm
	 *            TParm 需要过滤的数据
	 * @return TParm
	 */
	public TParm filterTParmData(TParm parm) {
		// System.out.println("过滤TABLE资料"+parm);
		/*
		 * 利用循环来计算此数据中的生日算年龄，入院日期算住院天数
		 * (生日字段:SYS_PATINFO.BIRTH_DATE对应KEY(AGE),入院日期字段
		 * :ADM_INP.IN_DATE对应KEY(DAYNUM))
		 */
		Timestamp sysDate = SystemTool.getInstance().getDate();
		// 返回的行数
		int rowCount = parm.getCount("PAT_NAME");
		for (int i = 0; i < rowCount; i++) {
			Timestamp temp = parm.getTimestamp("BIRTH_DATE", i) == null ? sysDate
					: parm.getTimestamp("BIRTH_DATE", i);
			// 计算年龄
			String age = "0";
			if (parm.getTimestamp("IN_DATE", i) != null)
				age = OdiUtil.getInstance().showAge(temp,
						parm.getTimestamp("IN_DATE", i));
			else
				age = "";
			parm.addData("AGE", age);
			// 计算住院天数
			Timestamp tp = parm.getTimestamp("DS_DATE", i);
			if (tp == null) {
				int days = 0;
				if (parm.getTimestamp("IN_DATE", i) == null) {
					parm.addData("DAYNUM", "");
				} else {
					days = StringTool.getDateDiffer(StringTool.setTime(sysDate,
							"00:00:00"), StringTool.setTime(parm.getTimestamp(
							"IN_DATE", i), "00:00:00"));
					parm.addData("DAYNUM", days == 0 ? 1 : days);
				}
			} else {
				int days = 0;
				if (parm.getTimestamp("IN_DATE", i) == null) {
					parm.addData("DAYNUM", "");
				} else {
					// ===============modify by chenxi 20120703 start
					days = StringTool.getDateDiffer(StringTool.setTime(parm
							.getTimestamp("DS_DATE", i), "00:00:00"),
							StringTool.setTime(parm.getTimestamp("IN_DATE", i),
									"00:00:00"));
					// =========== modify by chenxi 20120703 stop
					parm.addData("DAYNUM", days == 0 ? 1 : days);
				}
			}
		}
		return parm;
	}

	/**
	 * 得到住院医生站的查询参数
	 * 
	 * @param type
	 *            String IN为在院;OUT为出院
	 * @return TParm
	 */
	public TParm getQueryData(String type) {
		TParm result = new TParm();
		if (type.equals("IN")) {
			if (this.getRunFlg().equals("INWCHECK")
					|| this.getRunFlg().equals("INWEXE")
					|| this.getRunFlg().equals("SHEET")) {
				// 科室
				result.setData("DEPT_CODE", this.getValue("INW_DEPT_CODE"));
				// 病区
				result.setData("STATION_CODE", this
						.getValue("INW_STATION_CODE"));
				// 经治医师
				result.setData("VC_CODE", this.getValue("INW_VC_CODE"));
			} else {
				// 科室
				result.setData("DEPT_CODE", this.getValue("DEPT_CODE"));
				// 病区
				result.setData("STATION_CODE", this.getValue("STATION_CODE"));
				// 经治医师
				result.setData("VC_CODE", this.getValue("VC_CODE"));
			}
			// 病床
			// result.setData("BED_NO",this.getValue("BED_NO"));
			// 病案号
			String mrNo = getValueString("MR_NO");
			if (mrNo.length() > 0) {
				mrNo = PatTool.getInstance().checkMrno(mrNo);
				
				//modify by huangtt 20160930 EMPI患者查重提示  start
				Pat pat = Pat.onQueryByMrNo(mrNo);
				if (!StringUtil.isNullString(mrNo) && !mrNo.equals(pat.getMrNo())) {
			            this.messageBox("病案号" + mrNo + " 已合并至 " + "" + pat.getMrNo());
			            mrNo= pat.getMrNo();
			    }
				setValue("PAT_NAME", pat.getName());
				//modify by huangtt 20160930 EMPI患者查重提示  end
				
				
				setValue("MR_NO", mrNo);
				result.setData("MR_NO", mrNo);
			}
			// 住院号
			String ipdNo = getValueString("IPD_NO");
			if (ipdNo.length() > 0) {
				ipdNo = PatTool.getInstance().checkIpdno(ipdNo);
				setValue("IPD_NO", ipdNo);
				result.setData("IPD_NO", ipdNo);
			}
			// 查询得到就诊号SELECT MAX(CASE_NO) AS CASE_NO FROM ADM_INP WHERE
			// MR_NO=<MR_NO>
			TParm action = new TParm();
			if (mrNo.length() != 0) {
				action.setData("MR_NO", mrNo);
			}
			if (ipdNo.length() != 0) {
				action.setData("IPD_NO", ipdNo);
			}
			// String caseNo = getCaseNo(action);
			String sql = " SELECT MAX(CASE_NO) AS CASE_NO FROM ADM_INP WHERE MR_NO='"
					+ mrNo + "'";
			String caseNo = "";
			TParm caseParm = new TParm(this.getDBTool().select(sql));
			if (caseParm.getCount() <= 0) {
				this.messageBox("查询档次就诊号失败" + action.getErrText());
				return caseParm;
			}
			caseNo = caseParm.getValue("CASE_NO", 0);
			result.setData("CASE_NO", caseNo);
			// 住院日期
			result.setData("ADM_DATE", this.getValue("ADM_DATE"));
			
			result.setData("DIE_CODE", this.getValue("DIE_CODE"));
			
		} else {
			// 得到出院页签数据
			// 住院起始日期
			result.setData("START_DATE", this.getValue("START_DATE"));
			// 住院终止日期
			result.setData("END_DATE", this.getValue("END_DATE"));
			// 出院起始日期
			result.setData("START_DATEOUT", this.getValue("START_DATEOUT"));
			// 出院终止日期
			result.setData("END_DATEOUT", this.getValue("END_DATEOUT"));
			// 科室
			result.setData("DEPT_CODE", this.getValue("DEPT_CODEOUT"));
			// 病区
			result.setData("STATION_CODE", this.getValue("STATION_CODEOUT"));
			// 经治医师
			result.setData("VC_CODE", this.getValue("VC_CODEOUT"));
			// 病案号
			String mrNo = getValueString("MR_NOOUT");
			if (mrNo.length() > 0) {
				mrNo = PatTool.getInstance().checkMrno(mrNo);
				
				//modify by huangtt 20160930 EMPI患者查重提示  start
				Pat pat = Pat.onQueryByMrNo(mrNo);
				if (!StringUtil.isNullString(mrNo) && !mrNo.equals(pat.getMrNo())) {
			            this.messageBox("病案号" + mrNo + " 已合并至 " + "" + pat.getMrNo());
			            mrNo= pat.getMrNo();
			    }
				setValue("PAT_NAMEOUT", pat.getName());
				//modify by huangtt 20160930 EMPI患者查重提示  end
				
				setValue("MR_NOOUT", mrNo);
				result.setData("MR_NO", mrNo);
			}
			// 住院号
			String ipdNo = getValueString("IPD_NOOUT");
			if (ipdNo.length() > 0) {
				ipdNo = PatTool.getInstance().checkIpdno(ipdNo);
				setValue("IPD_NOOUT", ipdNo);
				result.setData("IPD_NO", ipdNo);
			}
			// 查询得到就诊号SELECT MAX(CASE_NO) AS CASE_NO FROM ADM_INP WHERE
			// MR_NO=<MR_NO>
			TParm action = new TParm();
			if (mrNo.length() != 0) {
				action.setData("MR_NO", mrNo);
			}
			if (ipdNo.length() != 0) {
				action.setData("IPD_NO", ipdNo);
			}
			String caseNo = getCaseNo(action);
			result.setData("CASE_NO", caseNo);
			// 账务状态
			result.setData("BILL_STATUS", this.getValueString("BILL_STATUS"));
			// 入院起迄
			// result.setData("ADM_DATE",this.getValue("ADM_DATEOUT"));
			
			result.setData("DIE_CODE_OUT", this.getValue("DIE_CODE_OUT"));
		}
		return result;
	}

	/**
	 * 当前操作者是否是值班医师
	 * 
	 * @return boolean
	 */
	public boolean isKeepWatch() {
		if (!this.getRunFlg().equals("ODI")) {
			return true;
		}
		// 得到当前用户ID
		String userId = Operator.getID();
		// 得到当前病区
		String stationCode = Operator.getStation();
		TParm action = new TParm(this.getDBTool().select(
				"SELECT DR_CODE FROM ODI_DUTYDRLIST WHERE STATION_CODE='"
						+ stationCode + "' AND DR_CODE='" + userId + "'"));
		// System.out.println("isKeepWatch:"+action.getCount());
		if (action.getInt("ACTION", "COUNT") == 0) {
			// 设置医师
			this.setValue("VC_CODE", Operator.getID());
			// 设置只能是当前医师编辑
			this.callFunction("UI|VC_CODE|setEnabled", false);
			return false;
		}
		// 设置医师
		this.setValue("VC_CODE", Operator.getID());
		// 设置只能是当前医师编辑
		this.callFunction("UI|VC_CODE|setEnabled", true);
		return true;
	}

	/**
	 * 得到CASE_NO
	 * 
	 * @param parm
	 *            TParm
	 * @return String
	 */
	public String getCaseNo(TParm parm) {
		String caseNo = "";
		// 检核
		if (!parm.existData("MR_NO") && !parm.existData("IPD_NO")) {
			return caseNo;
		}
		TParm action = OdiMainTool.getInstance().queryPatCaseNo(parm);
		if (action.getErrCode() < 0) {
			this.messageBox(action.getErrText());
			return caseNo;
		}
		// System.out.println("返回个数:" + action.getInt("ACTION", "COUNT"));
		if (action.getInt("ACTION", "COUNT") > 1) {
			// 调用其他窗体查询CASE_NO
			action.setData("SYSTEM_CODE", "ODI");
			Object obj = this.openDialog("%ROOT%\\config\\odi\\PatInfoUI.x",
					action);
			if (obj != null) {
				TParm actionParm = (TParm) obj;
				caseNo = actionParm.getValue("CASE_NO");
			}
		} else {
			caseNo = action.getValue("CASE_NO", 0);
		}
		return caseNo;
	}

	/**
	 * 得到PANEL
	 * 
	 * @return TPanel
	 */
	public TPanel getTPanel() {
		return (TPanel) this.getComponent(PANEL);
	}

	/**
	 * 启动子面板
	 * 
	 * @param tag
	 *            String
	 * @param path
	 *            String
	 */
	public void runPane(String tag, String path) {
		// 得到系统参数为空提示
		if (this.getRunFlg().length() == 0) {
			// 请设置系统参数！
			this.messageBox("E0153");
			return;
		}
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 表示页签选择的状态
		int selType = tabPane.getSelectedIndex();
		// 关闭当前工作页面
		onClosePanel();
		// 拿到当前选中行
		int selectRow = (Integer) callFunction("UI|" + TABLE
				+ "|getSelectedRow");
		// 是否有选中
		if (selectRow < 0)
			return;
		// 得到选中行数据
		TParm actionParm = this.getSelectRowData(TABLE);
		// 住院医生站调用
		String mrNo = actionParm.getValue("MR_NO");
		if (mrNo == null || mrNo.length() == 0)
			return;
		// System.out.println("得到选中行数据"+actionParm);
		// 定义CASE_NO
		TParm action = new TParm();
		String caseNo = "";
		int i = 0;
		if (selType == 0) {
			// 在院
			caseNo = this.getValueString("CASE_NO");
			IsICU = SYSBedTool.getInstance().checkIsICU(caseNo);
			// 医生站
			action.setData("ODI", "CASE_NO", caseNo);
			action.setData("ODI", "VS_DR_CODE", this.getValue("VC_CODE"));
			action.setData("ODI", "BED_NO", actionParm.getData("BED_NO"));
			action.setData("ODI", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("ODI", "MR_NO", this.getValue("MR_NO"));
			// 姓名
			action.setData("ODI", "PAT_NAME", this.getValue("PAT_NAME"));
			// 姓名1
			action.setData("ODI", "PAT_NAME1", TMessage.getPy(this
					.getValueString("PAT_NAME")));
			String orgCode = this.getOrgCode(this.getValue("STATION_CODE")
					.toString(), this.getValue("DEPT_CODE").toString());
			// 拿到对应药房
			action.setData("ODI", "ORG_CODE", orgCode);
			action
					.setData("ODI", "STATION_CODE", this
							.getValue("STATION_CODE"));
			action.setData("ODI", "DEPT_CODE", this.getValue("DEPT_CODE"));
			// 停止划价
			action.setData("ODI", "STOP_BILL_FLG", actionParm
					.getData("STOP_BILL_FLG"));
			action.setData("ODI", "ADM_DATE", actionParm.getData("IN_DATE"));
			// 生日
			action.setData("ODI", "BIRTH_DATE", actionParm
					.getData("BIRTH_DATE"));
			// 性别
			action.setData("ODI", "SEX_CODE", actionParm.getData("SEX_CODE"));
			// 邮编
			action.setData("ODI", "POST_CODE", actionParm.getData("POST_CODE"));
			// 地址
			action.setData("ODI", "ADDRESS", actionParm.getData("ADDRESS"));
			// 单位
			action.setData("ODI", "COMPANY_DESC", actionParm
					.getData("COMPANY_DESC"));
			// 电话
			action.setData("ODI", "TEL", actionParm.getData("CELL_PHONE"));
			// 家庭电话
			action.setData("ODI", "TEL1", actionParm.getData("TEL_HOME"));
			// 身份证号
			action.setData("ODI", "IDNO", actionParm.getData("IDNO"));
			// 主诊断
			action.setData("ODI", "MAINDIAG", actionParm.getData("MAINDIAG"));
			// 身份
			action.setData("ODI", "CTZ_CODE", actionParm.getData("CTZ1_CODE"));
			// 保存权限注记
			action.setData("ODI", "SAVE_FLG", true);
			// 最新诊断编码
			action.setData("ODI", "ICD_CODE", actionParm.getData("ICD_CODE"));
			// 最新诊断名称
			action.setData("ODI", "ICD_DESC", actionParm.getData("MAINDIAG"));
			// 合理用药
			action.setData("ODI", "PASS", passIsReady);
			action.setData("ODI", "FORCE", enforcementFlg);
			action.setData("ODI", "WARN", warnFlg);
			if (passIsReady) {
				action.setData("ODI", "passflg", initReasonbledMed());
			} else {
				action.setData("ODI", "passflg", false);
			}
			// 会诊注记
			if ("OIDR".equals(this.getRunFlg())) {
				action.setData("ODI", "OIDRFLG", true);
			} else {
				action.setData("ODI", "OIDRFLG", false);
			}
			// ICU注记
			action.setData("ODI", "ICU_FLG", IsICU);

			// 护士站
			action.setData("INW", "CASE_NO", caseNo);
			action.setData("INW", "STATION_CODE", this
					.getValue("INW_STATION_CODE"));
			action.setData("INW", "POPEDEM", this.isInwPopedem());
			// 身份1
			action.setData("INW", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
			// 身份2
			action.setData("INW", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
			// 身份3
			action.setData("INW", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
			// 姓名
			action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
			// 科室
			action.setData("INW", "DEPT_CODE", this.getValue("INW_DEPT_CODE"));
			// 住院号
			action.setData("INW", "IPD_NO", actionParm.getData("IPD_NO"));
			// 病案号
			action.setData("INW", "MR_NO", this.getValue("MR_NO"));
			// 入院时间
			action.setData("INW", "ADM_DATE", actionParm.getData("IN_DATE"));
			// 保存权限注记
			action.setData("INW", "SAVE_FLG", true);
			// ICU注记
			action.setData("INW", "ICU_FLG", IsICU);

			// 计价
			action.setData("IBS", "CASE_NO", caseNo);
			action.setData("IBS", "VS_DR_CODE", this.getValue("VC_CODE"));
			action.setData("IBS", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("IBS", "MR_NO", this.getValue("MR_NO"));
			action.setData("IBS", "PAT_NAME", this.getValue("PAT_NAME"));
			// 拿到对应药房
			action.setData("IBS", "ORG_CODE", orgCode);
			action
					.setData("IBS", "STATION_CODE", this
							.getValue("STATION_CODE"));
			action.setData("IBS", "DEPT_CODE", this.getValue("DEPT_CODE"));
			// 停止划价
			action.setData("IBS", "STOP_BILL_FLG", actionParm
					.getData("STOP_BILL_FLG"));
			// 床号
			action.setData("IBS", "BED_NO", actionParm.getData("BED_NO"));
			// 身份1
			action.setData("IBS", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
			// 身份2
			action.setData("IBS", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
			// 身份3
			action.setData("IBS", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
			// 红色警戒
			action.setData("IBS", "RED_SIGN", actionParm.getData("RED_SIGN"));
			// 黄色警戒
			action.setData("IBS", "YELLOW_SIGN", actionParm
					.getData("YELLOW_SIGN"));
			// 绿色通道
			action.setData("IBS", "GREENPATH_VALUE", actionParm
					.getData("GREENPATH_VALUE"));
			// 医疗总费用
			action.setData("IBS", "TOTAL_AMT", actionParm.getData("TOTAL_AMT"));
			// 保存权限注记
			action.setData("IBS", "SAVE_FLG", true);
			// 病案首页
			action.setData("MRO", "CASE_NO", caseNo);
			// 保存权限注记
			action.setData("MRO", "SAVE_FLG", true);
			// ADM
			action.setData("ADM", "CASE_NO", caseNo);
			action.setData("ADM", "MR_NO", this.getValue("MR_NO"));
			action.setData("ADM", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("ADM", "ADM_DATE", actionParm.getData("IN_DATE"));
			action.setData("ADM", "ADM_FLG", "Y");
			// 保存权限注记
			action.setData("ADM", "SAVE_FLG", true);
			action.setData("NSS", "CASE_NO", caseNo);
			action.setData("NSS", "MR_NO", this.getValue("MR_NO"));
			// 临床路径准进准出
			action.setData("CLP", "CASE_NO", caseNo);
			action.setData("CLP", "MR_NO", this.getValue("MR_NO"));
			action.setData("CLP", "CLNCPATH_CODE", actionParm
					.getValue("CLNCPATH_CODE"));

			// 预交金
			action.setData("BILPAY", "CASE_NO", caseNo);
		} else {
			// 出院
			caseNo = this.getValueString("CASE_NOOUT");
			action.setData("ODI", "CASE_NO", caseNo);
			action.setData("ODI", "VS_DR_CODE", this.getValue("VC_CODEOUT"));
			action.setData("ODI", "BED_NO", actionParm.getData("BED_NO"));
			action.setData("ODI", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("ODI", "MR_NO", actionParm.getData("MR_NO"));
			action.setData("ODI", "PAT_NAME", this.getValue("PAT_NAMEOUT"));
			String orgCode = this.getOrgCode(this.getValue("STATION_CODEOUT")
					.toString(), this.getValue("DEPT_CODEOUT").toString());
			// 拿到对应药房
			action.setData("ODI", "ORG_CODE", orgCode);
			action.setData("ODI", "STATION_CODE", this
					.getValue("STATION_CODEOUT"));
			action.setData("ODI", "DEPT_CODE", this.getValue("DEPT_CODEOUT"));
			// 停止划价
			action.setData("ODI", "STOP_BILL_FLG", actionParm
					.getData("STOP_BILL_FLG"));
			// 住院日期
			action.setData("ODI", "ADM_DATE", actionParm.getData("IN_DATE"));
			// 生日
			action.setData("ODI", "BIRTH_DATE", actionParm
					.getData("BIRTH_DATE"));
			// 性别
			action.setData("ODI", "SEX_CODE", actionParm.getData("SEX_CODE"));
			// 邮编
			action.setData("ODI", "POST_CODE", actionParm.getData("POST_CODE"));
			// 地址
			action.setData("ODI", "ADDRESS", actionParm.getData("ADDRESS"));
			// 单位
			action.setData("ODI", "COMPANY_DESC", actionParm
					.getData("COMPANY_DESC"));
			// 电话
			action.setData("ODI", "TEL", actionParm.getData("CELL_PHONE"));
			// 家庭电话
			action.setData("ODI", "TEL1", actionParm.getData("TEL_HOME"));
			// 身份证号
			action.setData("ODI", "IDNO", actionParm.getData("IDNO"));
			// 主诊断
			action.setData("ODI", "MAINDIAG", actionParm.getData("MAINDIAG"));
			// 身份
			action.setData("ODI", "CTZ_CODE", actionParm.getData("CTZ1_CODE"));
			// 保存权限注记
			action.setData("ODI", "SAVE_FLG", false);
			// 最新诊断编码
			action.setData("ODI", "ICD_CODE", actionParm.getData("ICD_CODE"));
			// 最新诊断名称
			action.setData("ODI", "ICD_DESC", actionParm.getData("MAINDIAG"));
			// 合理用药
			action.setData("ODI", "PASS", passIsReady);
			action.setData("ODI", "FORCE", enforcementFlg);
			action.setData("ODI", "WARN", warnFlg);
			if (passIsReady) {
				action.setData("ODI", "passflg", initReasonbledMed());
			} else {
				action.setData("ODI", "passflg", false);
			}
			// 会诊注记
			if ("OIDR".equals(this.getRunFlg())) {
				action.setData("ODI", "OIDRFLG", true);
			} else {
				action.setData("ODI", "OIDRFLG", false);
			}
			// ICU注记
			action.setData("ODI", "ICU_FLG", IsICU);

			// 护士站
			action.setData("INW", "CASE_NO", caseNo);
			action.setData("INW", "STATION_CODE", this
					.getValue("INW_STATION_CODEOUT"));
			action.setData("INW", "POPEDEM", this.isInwPopedem());
			// 身份1
			action.setData("INW", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
			// 身份2
			action.setData("INW", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
			// 身份3
			action.setData("INW", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
			// 姓名
			action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
			// 科室
			action.setData("INW", "DEPT_CODE", this.getValue("INW_DEPT_CODE"));
			// 住院号
			action.setData("INW", "IPD_NO", actionParm.getData("IPD_NO"));
			// 病案号
			action.setData("INW", "MR_NO", actionParm.getData("MR_NO"));
			// 入院时间
			action.setData("INW", "ADM_DATE", actionParm.getData("IN_DATE"));
			// 保存权限注记
			action.setData("INW", "SAVE_FLG", false);
			// 计价
			action.setData("IBS", "CASE_NO", caseNo);
			action.setData("IBS", "VS_DR_CODE", this.getValue("VC_CODEOUT"));
			action.setData("IBS", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("IBS", "MR_NO", actionParm.getData("MR_NO"));
			action.setData("IBS", "PAT_NAME", this.getValue("PAT_NAMEOUT"));
			// 拿到对应药房
			action.setData("IBS", "ORG_CODE", orgCode);
			action.setData("IBS", "STATION_CODE", this
					.getValue("STATION_CODEOUT"));
			action.setData("IBS", "DEPT_CODE", this.getValue("DEPT_CODEOUT"));
			// 停止划价
			action.setData("IBS", "STOP_BILL_FLG", actionParm
					.getData("STOP_BILL_FLG"));
			// 床号
			action.setData("IBS", "BED_NO", actionParm.getData("BED_NO"));
			// 身份1
			action.setData("IBS", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
			// 身份2
			action.setData("IBS", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
			// 身份3
			action.setData("IBS", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
			// 红色警戒
			action.setData("IBS", "RED_SIGN", actionParm.getData("RED_SIGN"));
			// 黄色警戒
			action.setData("IBS", "YELLOW_SIGN", actionParm
					.getData("YELLOW_SIGN"));
			// 医疗总费用
			action.setData("IBS", "TOTAL_AMT", actionParm.getData("TOTAL_AMT"));
			// 保存权限注记
			action.setData("IBS", "SAVE_FLG", false);
			// 病案首页
			action.setData("MRO", "CASE_NO", caseNo);
			// 保存权限注记
			action.setData("MRO", "SAVE_FLG", false);
			// ADM
			action.setData("ADM", "CASE_NO", caseNo);
			action.setData("ADM", "MR_NO", this.getValue("MR_NOOUT"));
			action.setData("ADM", "IPD_NO", actionParm.getData("IPD_NO"));
			action.setData("ADM", "ADM_DATE", actionParm.getData("IN_DATE"));
			action.setData("ADM", "ADM_FLG", "N");
			// 保存权限注记
			action.setData("ADM", "SAVE_FLG", false);
			action.setData("NSS", "CASE_NO", caseNo);
			action.setData("NSS", "MR_NO", this.getValue("MR_NOOUT"));
			// 临床路径准进准出
			action.setData("CLP", "CASE_NO", caseNo);
			action.setData("CLP", "MR_NO", actionParm.getData("MR_NO"));
			action.setData("CLP", "CLNCPATH_CODE", actionParm
					.getValue("CLNCPATH_CODE"));
			// 预交金
			action.setData("BILPAY", "CASE_NO", caseNo);
		}

		// System.out.println("path"+path+"TParm"+action);
		// $$ modified by lx 2012/04/06
		// 住院查询(PDF整理)
		if (path.indexOf("ODIDocQuery") != -1) {
			this.openWindow("%ROOT%\\config\\ODI\\ODIDocQuery.x", action);
		} else {
			getTPanel().addItem(tag, "%ROOT%\\config\\" + path, action, false);
			workPanelTag = tag;
			tabPane.setEnabled(false);
			((TTable) this.getComponent(TABLE)).setVisible(false);
		}
		//
	}

	/**
	 * 拿到对应药房
	 * 
	 * @param stationCode
	 *            String
	 * @param deptCode
	 *            String
	 * @return String
	 */
	public String getOrgCode(String stationCode, String deptCode) {
		TParm parm = new TParm(this.getDBTool().select(
				"SELECT ORG_CODE FROM SYS_STATION WHERE STATION_CODE='"
						+ stationCode + "'"));
		if (parm.getInt("ACTION", "COUNT") == 0) {
			return "";
		}
		return parm.getValue("ORG_CODE", 0);
	}

	/**
	 * 
	 * @param tag
	 *            String
	 * @param path
	 *            String
	 * @param parm
	 *            TParm
	 */
	public void runPaneSocketInwCheck(String tag, String path, TParm parm) {
		// this.messageBox(""+parm);
		// 关闭当前工作页面
		// onClosePanel();
		// 得到选中行数据
		TParm actionParm = this.getSelectRowData(TABLE);
		TParm action = new TParm();
		action.setData("INW", "CASE_NO", parm.getData("CASE_NO"));
		action.setData("INW", "STATION_CODE", parm.getData("STATION_CODE"));
		action.setData("INW", "POPEDEM", this.isInwPopedem());
		// 身份1
		action.setData("INW", "CTZ1_CODE", actionParm.getData("CTZ1_CODE"));
		// 身份2
		action.setData("INW", "CTZ2_CODE", actionParm.getData("CTZ2_CODE"));
		// 身份3
		action.setData("INW", "CTZ3_CODE", actionParm.getData("CTZ3_CODE"));
		// 姓名
		action.setData("INW", "PAT_NAME", this.getValue("PAT_NAME"));
		// 科室
		action.setData("INW", "DEPT_CODE", this.getValue("INW_DEPT_CODE"));
		// 住院号
		action.setData("INW", "IPD_NO", actionParm.getData("IPD_NO"));
		// 病案号
		action.setData("INW", "MR_NO", this.getValue("MR_NO"));
		// 入院时间
		action.setData("INW", "ADM_DATE", actionParm.getData("IN_DATE"));
		// 保存权限注记
		action.setData("INW", "SAVE_FLG", true);
		action.setData("INW", "LEDUI", parm.getData("LEDUI"));
		onClosePanel();
		getTPanel().addItem(tag, "%ROOT%\\config\\" + path, action, false);
		((TTable) this.getComponent(TABLE)).setVisible(false);
		workPanelTag = tag;
	}

	/**
	 * 得到选中行数据
	 * 
	 * @param tableTag
	 *            String
	 * @return TParm
	 */
	public TParm getSelectRowData(String tableTag) {
		// this.messageBox("===getSelectRowData==");
		int selectRow = (Integer) callFunction("UI|" + tableTag
				+ "|getSelectedRow");
		if (selectRow < 0)
			return new TParm();
		// out("行号" + selectRow);
		TParm parm = (TParm) callFunction("UI|" + tableTag + "|getParmValue");
		// out("GRID数据" + parm);
		TParm parmRow = parm.getRow(selectRow);
		if (this.getRunFlg().equals("INWCHECK")
				|| this.getRunFlg().equals("INWEXE")
				|| this.getRunFlg().equals("INWSHEET")) {
			parmRow.setData("INW_DEPT_CODE", parmRow.getValue("DEPT_CODE"));
			parmRow.setData("INW_STATION_CODE", parmRow
					.getValue("STATION_CODE"));
			parmRow.setData("INW_VC_CODE", parmRow.getValue("VC_CODE"));
		}
		return parmRow;
	}

	public static void main(String args[]) {
		JavaHisDebug.runFrame("odi\\ODIMainUI.x");

	}

	/**
	 * 关闭事件
	 * 
	 * @return boolean
	 */
	public boolean onClosing() {
		// 清空状态条信息
		callFunction("UI|setSysStatus", "");
		if (!onClosePanel())
			return false;
		// 关闭Socket
		// if (client == null){
		// if (this.getRunFlg().equals("INWCHECK")) {
		// this.messageBox_(2);
		// ledUi.close();
		// }
		// return true;
		// }
		// client.close();
		if (this.getRunFlg().equals("INWCHECK")) {
			ledUi.close();
		}
		// modify shibl 20120317
		// if (this.getRunFlg().equals("INWEXE")) {
		// ledUi1.close();
		// }
		return true;
	}

	/**
	 * 关闭工作页面
	 * 
	 * @return boolean
	 */
	public boolean onClosePanel() {
		if (workPanelTag == null || workPanelTag.length() == 0)
			return true;
		TPanel p = (TPanel) getComponent(workPanelTag);
		if (!p.getControl().onClosing())
			return false;
		// 移除当前子UI
		callFunction("UI|" + PANEL + "|removeItem", workPanelTag);
		// 移除子UIMenuBar
		callFunction("UI|removeChildMenuBar");
		// 移除子UIToolBar
		callFunction("UI|removeChildToolBar");
		// 显示UIshowTopMenu
		callFunction("UI|showTopMenu");
		workPanelTag = "";
		// 得到TabbedPane控件
		TTabbedPane tabPane = (TTabbedPane) this
				.callFunction("UI|TablePane|getThis");
		// 可以编辑
		tabPane.setEnabled(true);
		// 显示TABLE
		((TTable) this.getComponent(TABLE)).setVisible(true);
		return true;
	}

	/**
	 * 返回数据库操作工具
	 * 
	 * @return TJDODBTool
	 */
	public TJDODBTool getDBTool() {
		return TJDODBTool.getInstance();
	}

	/**
	 * 得到系统代码
	 * 
	 * @return String
	 */
	public String getRunFlg() {
		return runFlg;
	}

	public boolean isInwPopedem() {
		return inwPopedem;
	}

	/**
	 * 设置系统代码
	 * 
	 * @param runFlg
	 *            String
	 */
	public void setRunFlg(String runFlg) {
		this.runFlg = runFlg;
	}

	public void setInwPopedem(boolean inwPopedem) {
		this.inwPopedem = inwPopedem;
	}

	/**
	 * 显示当前TOOLBAR
	 */
	public void onShowWindowsEvent() {
		if (workPanelTag == null || workPanelTag.length() == 0) {
			// 显示UIshowTopMenu
			callFunction("UI|showTopMenu");
			return;
		}
		TPanel p = (TPanel) getComponent(workPanelTag);
		p.getControl().callFunction("onShowWindowsFunction");
	}

	public void passcheck() {
		// 合理用药
		passIsReady = SYSNewRegionTool.getInstance().isIREASONABLEMED(
				Operator.getRegion());
		// 预警等级
		warnFlg = Integer.parseInt(TConfig.getSystemValue("WarnFlg"));
		// 是否强制
		enforcementFlg = "Y".equals(TConfig.getSystemValue("EnforcementFlg"));
		// 合理用药
		if (passIsReady) {
			if (!initReasonbledMed()) {
				this.messageBox("合理用药初始化失败！");
			}
		}
	}

	/**
	 * 初始化合理用药
	 * 
	 * @return boolean
	 */
	public boolean initReasonbledMed() {
		try {
			if (PassDriver.init() != 1) {
				return false;
			}
			// 合理用药初始化
			if (PassDriver.PassInit(Operator.getName(), Operator.getDept(), 10) != 1) {
				return false;
			}
			// 合理用药控制参数
			if (PassDriver.PassSetControlParam(1, 2, 0, 2, 1) != 1) {
				return false;
			}
		} catch (UnsatisfiedLinkError e1) {
			e1.printStackTrace();
			return false;
		} catch (NoClassDefFoundError e2) {
			e2.printStackTrace();
			return false;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
		return true;
	}

	/**
	 * 拿到菜单
	 * 
	 * @param tag
	 *            String
	 * @return TMenuItem
	 */
	public TMenuItem getTMenuItem(String tag) {
		return (TMenuItem) this.getComponent(tag);
	}

	/**
	 * 呼叫体温单接口
	 */
	public void onVitalSign() {
		TParm sumParm = new TParm();
		int row = getTTable("TABLE").getSelectedRow();
		if (row < 0)
			return;
		TParm Rowparm = getTTable("TABLE").getParmValue().getRow(row);
		String caseNo_ = Rowparm.getValue("CASE_NO");
		String mrNo_ = Rowparm.getValue("MR_NO");
		String station_ = Rowparm.getValue("STATION_CODE");
		String ipdNo_ = Rowparm.getValue("IPD_NO");
		String bedNo_ = Rowparm.getValue("BED_NO");
		sumParm.setData("SUM", "CASE_NO", caseNo_);
		sumParm.setData("SUM", "MR_NO", mrNo_);
		sumParm.setData("SUM", "IPD_NO", ipdNo_);
		sumParm.setData("SUM", "STATION_CODE", station_);
		sumParm.setData("SUM", "BED_NO", bedNo_);
		sumParm.setData("SUM", "ADM_TYPE", "I");
		this.openDialog("%ROOT%\\config\\sum\\SUMVitalSign.x", sumParm, false);
	}

	/**
	 * 呼叫新生儿体温单
	 * 
	 * @param name
	 *            String
	 * @return TPanel
	 */
	public void onNewArrival() {
		TParm sumParm = new TParm();
		int row = getTTable("TABLE").getSelectedRow();
		if (row < 0)
			return;
		TParm Rowparm = getTTable("TABLE").getParmValue().getRow(row);
		String caseNo_ = Rowparm.getValue("CASE_NO");
		String mrNo_ = Rowparm.getValue("MR_NO");
		String station_ = Rowparm.getValue("STATION_CODE");
		String ipdNo_ = Rowparm.getValue("IPD_NO");
		String bedNo_ = Rowparm.getValue("BED_NO");
		sumParm.setData("SUM", "CASE_NO", caseNo_);
		sumParm.setData("SUM", "MR_NO", mrNo_);
		sumParm.setData("SUM", "IPD_NO", ipdNo_);
		sumParm.setData("SUM", "STATION_CODE", station_);
		sumParm.setData("SUM", "BED_NO", bedNo_);
		sumParm.setData("SUM", "ADM_TYPE", "I");
		this.openDialog("%ROOT%\\config\\sum\\SUMNewArrival.x", sumParm, false);
	}

	/**
	 * PDF整理
	 */
	public void onSubmitPDF() {
		this.runPane("STATIONMAIN", "ODI\\ODIDocQuery.x");
	}

	/**
	 * 弹出住辽计价
	 */
	public void onFee(){
		TParm ibsParm = new TParm();
		int row = getTTable("TABLE").getSelectedRow();
		if (row < 0){
			this.messageBox("请先选择记录！");
			return;
		}
		//构造参数;
		TParm Rowparm = getTTable("TABLE").getParmValue().getRow(row);
		String caseNo_ = Rowparm.getValue("CASE_NO");
		String mrNo_ = Rowparm.getValue("MR_NO");
		String station_ = Rowparm.getValue("STATION_CODE");
		String ipdNo_ = Rowparm.getValue("IPD_NO");
		String bedNo_ = Rowparm.getValue("BED_NO");
		String execDeptCode_ = Operator.getCostCenter();
		ibsParm.setData("IBS", "CASE_NO", caseNo_);
		ibsParm.setData("IBS", "IPD_NO", ipdNo_);
		ibsParm.setData("IBS", "MR_NO", mrNo_);
		ibsParm.setData("IBS", "BED_NO", bedNo_);
		ibsParm.setData("IBS", "DEPT_CODE", execDeptCode_);
		ibsParm.setData("IBS", "STATION_CODE", station_);
		ibsParm.setData("IBS", "VS_DR_CODE", this.getValue("VC_CODE"));
		ibsParm.setData("IBS", "TYPE", "NSS");
		ibsParm.setData("IBS", "CLNCPATH_CODE", "");

		this.openDialog("%ROOT%\\config\\ibs\\IBSOrderm.x", ibsParm,false);

	}

	// $$==============add by lx 2012/06/24 加入排序功能start=============$$//
	/**
	 * 加入表格排序监听方法
	 * 
	 * @param table
	 */
	public void addListener(final TTable table) {
		// System.out.println("==========加入事件===========");
		// System.out.println("++当前结果++"+masterTbl.getParmValue());
		// TParm tableDate = masterTbl.getParmValue();
		// System.out.println("===tableDate排序前==="+tableDate);
		table.getTable().getTableHeader().addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent mouseevent) {
				int i = table.getTable().columnAtPoint(mouseevent.getPoint());
				int j = table.getTable().convertColumnIndexToModel(i);
				// System.out.println("+i+"+i);
				// System.out.println("+i+"+j);
				// 调用排序方法;
				// 转换出用户想排序的列和底层数据的列，然后判断 f
				if (j == sortColumn) {
					ascending = !ascending;
				} else {
					ascending = true;
					sortColumn = j;
				}
				// table.getModel().sort(ascending, sortColumn);

				// 表格中parm值一致,
				// 1.取paramw值;
				TParm tableData = getTTable("TABLE").getParmValue();
				// 2.转成 vector列名, 行vector ;
				String columnName[] = tableData.getNames("Data");
				String strNames = "";
				for (String tmp : columnName) {
					strNames += tmp + ";";
				}
				strNames = strNames.substring(0, strNames.length() - 1);
				// System.out.println("==strNames=="+strNames);
				Vector vct = getVector(tableData, "Data", strNames, 0);
				// System.out.println("==vct=="+vct);

				// 3.根据点击的列,对vector排序
				// System.out.println("sortColumn===="+sortColumn);
				// 表格排序的列名;
				String tblColumnName = getTTable("TABLE")
						.getParmMap(sortColumn);
				// 转成parm中的列
				int col = tranParmColIndex(columnName, tblColumnName);
				// System.out.println("==col=="+col);

				compare.setDes(ascending);
				compare.setCol(col);
				java.util.Collections.sort(vct, compare);
				// 将排序后的vector转成parm;
				cloneVectoryParam(vct, new TParm(), strNames);

				// getTMenuItem("save").setEnabled(false);
			}
		});
	}

	/**
	 * vectory转成param
	 */
	private void cloneVectoryParam(Vector vectorTable, TParm parmTable,
			String columnNames) {
		//
		// System.out.println("===vectorTable==="+vectorTable);
		// 行数据->列
		// System.out.println("========names==========="+columnNames);
		String nameArray[] = StringTool.parseLine(columnNames, ";");
		// 行数据;
		for (Object row : vectorTable) {
			int rowsCount = ((Vector) row).size();
			for (int i = 0; i < rowsCount; i++) {
				Object data = ((Vector) row).get(i);
				parmTable.addData(nameArray[i], data);
			}
		}
		parmTable.setCount(vectorTable.size());
		getTTable("TABLE").setParmValue(parmTable);
		// System.out.println("排序后===="+parmTable);

	}

	/**
	 * 得到 Vector 值
	 * 
	 * @param group
	 *            String 组名
	 * @param names
	 *            String "ID;NAME"
	 * @param size
	 *            int 最大行数
	 * @return Vector
	 */
	private Vector getVector(TParm parm, String group, String names, int size) {
		Vector data = new Vector();
		String nameArray[] = StringTool.parseLine(names, ";");
		if (nameArray.length == 0) {
			return data;
		}
		int count = parm.getCount(group, nameArray[0]);
		if (size > 0 && count > size)
			count = size;
		for (int i = 0; i < count; i++) {
			Vector row = new Vector();
			for (int j = 0; j < nameArray.length; j++) {
				row.add(parm.getData(group, nameArray[j], i));
			}
			data.add(row);
		}
		return data;
	}

	/**
	 * 
	 * @param columnName
	 * @param tblColumnName
	 * @return
	 */
	private int tranParmColIndex(String columnName[], String tblColumnName) {
		int index = 0;
		for (String tmp : columnName) {

			if (tmp.equalsIgnoreCase(tblColumnName)) {
				// System.out.println("tmp相等");
				return index;
			}
			index++;
		}

		return index;
	}
	// $$==============add by lx 2012/06/24 加入排序功能end=============$$//
	/**
     * CDR
     */
    public void onQuerySummaryInfo() {
        TParm parm = new TParm();
        TTable table = (TTable)this.getComponent("TABLE");
        
        int selRow = table.getSelectedRow();
        if (selRow < 0) {
            this.messageBox("请选中要查看的病人信息");
            return;
        }    
        Container container = (Container) callFunction("UI|getThis");
        while (!(container instanceof TTabbedPane)) {
            container = container.getParent();
        }
        TTabbedPane tabbedPane = (TTabbedPane) container;

        parm.setData("MR_NO", table.getParmValue().getRow(selRow).getValue("MR_NO"));
        // 打开综合查询界面
        tabbedPane.openPanel("CDR_SUMMARY_UI",
                "%ROOT%\\config\\emr\\EMRCdrSummaryInfo.x", parm);
        TComponent component = (TComponent) callFunction(
                "UI|SYSTEM_TAB|findObject", "CDR_SUMMARY_UI");
        if (component != null) {
            tabbedPane.setSelectedComponent((Component) component);
            return;
        }
    }
    /**
     * 病历浏览
     */
    public void onCxShow(){  
    	TTable table =(TTable)this.getComponent("TABLE");
     	TParm parm = table.getParmValue();
    	String mrNo = parm.getValue("MR_NO", table.getSelectedRow());
    	String caseNo = parm.getValue("CASE_NO", table.getSelectedRow());
        TParm result = queryPassword();
        String user_password = result.getValue("USER_PASSWORD",0);
        String url = "http://"+getWebServicesIp()+"?userId="+Operator.getID()+"&password="+user_password+"&mrNo="+mrNo+"&caseNo="+caseNo;
        try {
            Runtime.getRuntime().exec(String.valueOf(String.valueOf((new
                    StringBuffer("cmd.exe /c start iexplore \"")).append(
                            url).append("\""))));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private TParm queryPassword(){
        String sql = "SELECT USER_PASSWORD FROM SYS_OPERATOR WHERE USER_ID = '"+Operator.getID()+"' AND REGION_CODE = '"+Operator.getRegion()+"'";
        return new TParm(TJDODBTool.getInstance().select(sql));
    }
    
    /**
     * 获取配置文件中的电子病历服务器IP
     * @return
     */
    public static String getWebServicesIp() {
        TConfig config = getProp();
        String url = config.getString("", "EMRIP");
        return url;
    }
    
    /**
     * 获取配置文件
     * @author shendr
     */
    public static TConfig getProp() {
        TConfig config=null;
        try{
         config = TConfig
                .getConfig("WEB-INF\\config\\system\\TConfig.x");
        }catch(Exception e){
            e.printStackTrace();
        }
        return config;
    }
	

}
