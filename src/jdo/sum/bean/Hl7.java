//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.08.13 at 10:02:29 ���� CST 
//


package jdo.sum.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{}msh"/>
 *         &lt;element ref="{}pid"/>
 *         &lt;element ref="{}pv1"/>
 *         &lt;element ref="{}obxList"/>
 *         &lt;element ref="{}obxOther"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "msh",
    "pid",
    "pv1",
    "obxList",
    "obxOther"
})
@XmlRootElement(name = "hl7")
public class Hl7 {

    @XmlElement(required = true)
    protected Msh msh;
    @XmlElement(required = true)
    protected Pid pid;
    @XmlElement(required = true)
    protected Pv1 pv1;
    @XmlElement(required = true)
    protected ObxList obxList;
    @XmlElement(required = true)
    protected ObxOther obxOther;

    /**
     * Gets the value of the msh property.
     * 
     * @return
     *     possible object is
     *     {@link Msh }
     *     
     */
    public Msh getMsh() {
        return msh;
    }

    /**
     * Sets the value of the msh property.
     * 
     * @param value
     *     allowed object is
     *     {@link Msh }
     *     
     */
    public void setMsh(Msh value) {
        this.msh = value;
    }

    /**
     * Gets the value of the pid property.
     * 
     * @return
     *     possible object is
     *     {@link Pid }
     *     
     */
    public Pid getPid() {
        return pid;
    }

    /**
     * Sets the value of the pid property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pid }
     *     
     */
    public void setPid(Pid value) {
        this.pid = value;
    }

    /**
     * Gets the value of the pv1 property.
     * 
     * @return
     *     possible object is
     *     {@link Pv1 }
     *     
     */
    public Pv1 getPv1() {
        return pv1;
    }

    /**
     * Sets the value of the pv1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pv1 }
     *     
     */
    public void setPv1(Pv1 value) {
        this.pv1 = value;
    }

    /**
     * Gets the value of the obxList property.
     * 
     * @return
     *     possible object is
     *     {@link ObxList }
     *     
     */
    public ObxList getObxList() {
        return obxList;
    }

    /**
     * Sets the value of the obxList property.
     * 
     * @param value
     *     allowed object is
     *     {@link ObxList }
     *     
     */
    public void setObxList(ObxList value) {
        this.obxList = value;
    }

    /**
     * Gets the value of the obxOther property.
     * 
     * @return
     *     possible object is
     *     {@link ObxOther }
     *     
     */
    public ObxOther getObxOther() {
        return obxOther;
    }

    /**
     * Sets the value of the obxOther property.
     * 
     * @param value
     *     allowed object is
     *     {@link ObxOther }
     *     
     */
    public void setObxOther(ObxOther value) {
        this.obxOther = value;
    }

}
