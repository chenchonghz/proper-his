package jdo.phl;

import com.dongyang.data.TParm;
import com.dongyang.jdo.TJDOTool;
import com.dongyang.db.TConnection;

/**
 * <p>
 * Title: 静点室床位
 * </p>
 *
 * <p>
 * Description: 静点室床位
 * </p>
 *
 * <p>
 * Copyright: Copyright (c) 2009
 * </p>
 *
 * <p>
 * Company:
 * </p>
 *
 * @author zhangy 2009.04.22
 * @version 1.0
 */
public class PhlBedTool
    extends TJDOTool {
    /**
     * 实例
     */
    public static PhlBedTool instanceObject;

    /**
     * 得到实例
     *
     * @return IndAgentTool
     */
    public static PhlBedTool getInstance() {
        if (instanceObject == null)
            instanceObject = new PhlBedTool();
        return instanceObject;
    }

    /**
     * 构造器
     */
    public PhlBedTool() {
        setModuleName("phl\\PHLBedModule.x");
        onInit();
    }

    /**
     * 查询
     *
     * @param parm
     * @return
     */
    public TParm onQuery(TParm parm) {
        TParm result = this.query("query", parm);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }

    /**
     * 新增
     *
     * @param parm
     * @return
     */
    public TParm onInsert(TParm parm) {
        TParm result = this.update("insert", parm);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }

    /**
     * 更新
     *
     * @param parm
     * @return
     */
    public TParm onUpdate(TParm parm) {
        TParm result = this.update("update", parm);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }

    /**
     * 更新床位状态
     * @param parm TParm
     * @param conn TConnection
     * @return TParm
     */
    public TParm onUpdateBed(TParm parm, TConnection conn) {
        TParm result = this.update("updateBed", parm, conn);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }

    /**
     * 更新病患状态
     * @param parm TParm
     * @param conn TConnection
     * @return TParm
     */
    public TParm onUpdatePatStatus(TParm parm, TConnection conn) {
        TParm result = this.update("updatePatStatus", parm, conn);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }


    /**
     * 删除
     *
     * @param parm
     * @return
     */
    public TParm onDelete(TParm parm) {
        TParm result = this.update("delete", parm);
        if (result.getErrCode() < 0) {
            err("ERR:" + result.getErrCode() + result.getErrText()
                + result.getErrName());
            return result;
        }
        return result;
    }


}
