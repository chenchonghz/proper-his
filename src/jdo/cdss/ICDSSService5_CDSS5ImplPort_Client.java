
package jdo.cdss;

/**
 * Please modify this class to meet your needs
 * This class is not complete
 */

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 2.7.8
 * 2015-08-31T10:42:03.836+08:00
 * Generated source version: 2.7.8
 * 
 */
public final class ICDSSService5_CDSS5ImplPort_Client {

    private static final QName SERVICE_NAME = new QName("http://service.zhangp.com/", "CDSS5ImplService");

    private ICDSSService5_CDSS5ImplPort_Client() {
    }

    public static void main(String args[]) throws java.lang.Exception {
        URL wsdlURL = CDSS5ImplService.WSDL_LOCATION;
        if (args.length > 0 && args[0] != null && !"".equals(args[0])) { 
            File wsdlFile = new File(args[0]);
            try {
                if (wsdlFile.exists()) {
                    wsdlURL = wsdlFile.toURI().toURL();
                } else {
                    wsdlURL = new URL(args[0]);
                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
      
        CDSS5ImplService ss = new CDSS5ImplService(wsdlURL, SERVICE_NAME);
        ICDSSService5 port = ss.getCDSS5ImplPort();  
        
        {
        System.out.println("Invoking fireRule5...");
        jdo.cdss.HisPojo _fireRule5_arg0 = null;
        jdo.cdss.HisPojo _fireRule5__return = port.fireRule5(_fireRule5_arg0);
        System.out.println("fireRule5.result=" + _fireRule5__return);


        }

        System.exit(0);
    }

}
