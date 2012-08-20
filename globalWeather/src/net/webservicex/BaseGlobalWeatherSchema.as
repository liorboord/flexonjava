package net.webservicex
{
	 import mx.rpc.xml.Schema
	 public class BaseGlobalWeatherSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseGlobalWeatherSchema():void
{		
			 var xsdXML0:XML = <s:schema xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.webserviceX.NET" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://www.webserviceX.NET">
    <s:element name="GetWeather">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="CityName" type="s:string"/>
                <s:element minOccurs="0" name="CountryName" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetWeatherResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="GetWeatherResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetCitiesByCountry">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="CountryName" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="GetCitiesByCountryResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="GetCitiesByCountryResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="string" nillable="true" type="s:string"/>
</s:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://www.webserviceX.NET'));
		}
	}
}