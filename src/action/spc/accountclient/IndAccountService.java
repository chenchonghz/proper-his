package action.spc.accountclient;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 2.5.2
 * 2013-11-19T12:11:46.984+08:00
 * Generated source version: 2.5.2
 * 
 */
@WebService(targetNamespace = "http://inf.ind.jdo/", name = "IndAccountService")
@XmlSeeAlso({ObjectFactory.class})
public interface IndAccountService {

    @WebResult(name = "return", targetNamespace = "")
    @RequestWrapper(localName = "onSaveIndAccount", targetNamespace = "http://inf.ind.jdo/", className = "action.spc.accountclient.OnSaveIndAccount")
    @WebMethod
    @ResponseWrapper(localName = "onSaveIndAccountResponse", targetNamespace = "http://inf.ind.jdo/", className = "action.spc.accountclient.OnSaveIndAccountResponse")
    public java.lang.String onSaveIndAccount(
        @WebParam(name = "arg0", targetNamespace = "")
        action.spc.accountclient.IndAccounts arg0
    );
}
