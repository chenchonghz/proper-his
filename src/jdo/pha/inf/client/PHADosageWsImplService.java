package jdo.pha.inf.client;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;
import javax.xml.ws.Service;

/**
 * This class was generated by Apache CXF 2.5.2
 * 2013-01-08T14:48:43.086+08:00
 * Generated source version: 2.5.2
 * 
 */
@WebServiceClient(name = "PHADosageWsImplService", 
                  wsdlLocation = "http://172.20.10.61:8080/web/services/phaDosageWsImpl?wsdl",
                  targetNamespace = "http://inf.pha.jdo/") 
public class PHADosageWsImplService extends Service {

    public final static URL WSDL_LOCATION;

    public final static QName SERVICE = new QName("http://inf.pha.jdo/", "PHADosageWsImplService");
    public final static QName PHADosageWsImplPort = new QName("http://inf.pha.jdo/", "PHADosageWsImplPort");
    static {
        URL url = null;
        try {
            url = new URL("http://172.20.10.61:8080/web/services/phaDosageWsImpl?wsdl");
        } catch (MalformedURLException e) {
            java.util.logging.Logger.getLogger(PHADosageWsImplService.class.getName())
                .log(java.util.logging.Level.INFO, 
                     "Can not initialize the default wsdl from {0}", "http://172.20.10.61:8080/web/services/phaDosageWsImpl?wsdl");
        }
        WSDL_LOCATION = url;
    }

    public PHADosageWsImplService(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public PHADosageWsImplService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public PHADosageWsImplService() {
        super(WSDL_LOCATION, SERVICE);
    }
    
    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public PHADosageWsImplService(WebServiceFeature ... features) {
        super(WSDL_LOCATION, SERVICE);
    }

    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public PHADosageWsImplService(URL wsdlLocation, WebServiceFeature ... features) {
        super(wsdlLocation, SERVICE);
    }

    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public PHADosageWsImplService(URL wsdlLocation, QName serviceName, WebServiceFeature ... features) {
        super(wsdlLocation, serviceName);
    }

    /**
     *
     * @return
     *     returns PHADosageWs
     */
    @WebEndpoint(name = "PHADosageWsImplPort")
    public PHADosageWs getPHADosageWsImplPort() {
        return super.getPort(PHADosageWsImplPort, PHADosageWs.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns PHADosageWs
     */
    @WebEndpoint(name = "PHADosageWsImplPort")
    public PHADosageWs getPHADosageWsImplPort(WebServiceFeature... features) {
        //return super.getPort(PHADosageWsImplPort, PHADosageWs.class, features);
    	return null;
    }

}
