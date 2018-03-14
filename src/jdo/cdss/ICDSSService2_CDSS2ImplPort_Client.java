
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
 * 2015-08-14T13:38:24.412+08:00
 * Generated source version: 2.7.8
 * 
 */
public final class ICDSSService2_CDSS2ImplPort_Client {

    private static final QName SERVICE_NAME = new QName("http://service.zhangp.com/", "CDSS2ImplService");

    private ICDSSService2_CDSS2ImplPort_Client() {
    }

    public static void main(String args[]) throws java.lang.Exception {
        URL wsdlURL = CDSS2ImplService.WSDL_LOCATION;
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
      
        CDSS2ImplService ss = new CDSS2ImplService(wsdlURL, SERVICE_NAME);
        ICDSSService2 port = ss.getCDSS2ImplPort();  
        
        {
        System.out.println("Invoking fireRule2...");
        jdo.cdss.HisPojo _fireRule2_arg0 = null;
        jdo.cdss.HisPojo _fireRule2__return = port.fireRule2(_fireRule2_arg0);
        System.out.println("fireRule2.result=" + _fireRule2__return);


        }

        System.exit(0);
    }

}
