//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.06.30 at 10:28:02 ���� CST 
//


package jdo.sta.bean;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for AENType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AENType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="AEN01" type="{}Integer6"/>
 *         &lt;element name="AEN02C" type="{}String" minOccurs="0"/>
 *         &lt;element name="AEN02N" type="{}String" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AENType", propOrder = {
    "aen01",
    "aen02C",
    "aen02N"
})
public class AENType {

    @XmlElement(name = "AEN01")
    protected int aen01;
    @XmlElementRef(name = "AEN02C", type = JAXBElement.class)
    protected JAXBElement<String> aen02C;
    @XmlElementRef(name = "AEN02N", type = JAXBElement.class)
    protected JAXBElement<String> aen02N;

    /**
     * Gets the value of the aen01 property.
     * 
     */
    public int getAEN01() {
        return aen01;
    }

    /**
     * Sets the value of the aen01 property.
     * 
     */
    public void setAEN01(int value) {
        this.aen01 = value;
    }

    /**
     * Gets the value of the aen02C property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getAEN02C() {
        return aen02C;
    }

    /**
     * Sets the value of the aen02C property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setAEN02C(JAXBElement<String> value) {
        this.aen02C = ((JAXBElement<String> ) value);
    }

    /**
     * Gets the value of the aen02N property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getAEN02N() {
        return aen02N;
    }

    /**
     * Sets the value of the aen02N property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setAEN02N(JAXBElement<String> value) {
        this.aen02N = ((JAXBElement<String> ) value);
    }

}