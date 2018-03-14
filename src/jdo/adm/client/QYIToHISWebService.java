package jdo.adm.client;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;
import javax.xml.ws.Service;

/**
 * This class was generated by Apache CXF 3.0.7
 * 2018-01-17T16:39:36.395+08:00
 * Generated source version: 3.0.7
 * 
 */
@WebServiceClient(name = "QYIToHISWebService", 
                  wsdlLocation = "file:/E:/QYIToHISWebService.wsdl",
                  targetNamespace = "http://tempuri.org/") 
public class QYIToHISWebService extends Service {

    public final static URL WSDL_LOCATION;

    public final static QName SERVICE = new QName("http://tempuri.org/", "QYIToHISWebService");
    public final static QName QYIToHISWebServiceSoap = new QName("http://tempuri.org/", "QYIToHISWebServiceSoap");
    public final static QName QYIToHISWebServiceSoap12 = new QName("http://tempuri.org/", "QYIToHISWebServiceSoap12");
    static {
        URL url = null;
        try {
            url = new URL("file:/E:/QYIToHISWebService.wsdl");
        } catch (MalformedURLException e) {
            java.util.logging.Logger.getLogger(QYIToHISWebService.class.getName())
                .log(java.util.logging.Level.INFO, 
                     "Can not initialize the default wsdl from {0}", "file:/E:/QYIToHISWebService.wsdl");
        }
        WSDL_LOCATION = url;
    }

    public QYIToHISWebService(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public QYIToHISWebService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public QYIToHISWebService() {
        super(WSDL_LOCATION, SERVICE);
    }
    

    /**
     *
     * @return
     *     returns QYIToHISWebServiceSoap
     */
    @WebEndpoint(name = "QYIToHISWebServiceSoap")
    public QYIToHISWebServiceSoap getQYIToHISWebServiceSoap() {
        return super.getPort(QYIToHISWebServiceSoap, QYIToHISWebServiceSoap.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns QYIToHISWebServiceSoap
     */
    @WebEndpoint(name = "QYIToHISWebServiceSoap")
    public QYIToHISWebServiceSoap getQYIToHISWebServiceSoap(WebServiceFeature... features) {
        //return super.getPort(QYIToHISWebServiceSoap, QYIToHISWebServiceSoap.class, features);
    	return null;
    }
    /**
     *
     * @return
     *     returns QYIToHISWebServiceSoap
     */
    @WebEndpoint(name = "QYIToHISWebServiceSoap12")
    public QYIToHISWebServiceSoap getQYIToHISWebServiceSoap12() {
        return super.getPort(QYIToHISWebServiceSoap12, QYIToHISWebServiceSoap.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns QYIToHISWebServiceSoap
     */
    @WebEndpoint(name = "QYIToHISWebServiceSoap12")
    public QYIToHISWebServiceSoap getQYIToHISWebServiceSoap12(WebServiceFeature... features) {
        //return super.getPort(QYIToHISWebServiceSoap12, QYIToHISWebServiceSoap.class, features);
    	return null;
    }

}
