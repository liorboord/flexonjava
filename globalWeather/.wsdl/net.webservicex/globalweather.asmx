<?xml version="1.0" encoding="UTF-8"?><wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.webserviceX.NET" targetNamespace="http://www.webserviceX.NET">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.webserviceX.NET">
      <s:element name="GetWeather">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="CityName" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="CountryName" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetWeatherResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetWeatherResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCitiesByCountry">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="CountryName" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCitiesByCountryResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetCitiesByCountryResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="string" nillable="true" type="s:string"/>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetCitiesByCountryHttpGetOut">
    <wsdl:part element="tns:string" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCitiesByCountrySoapOut">
    <wsdl:part element="tns:GetCitiesByCountryResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCitiesByCountrySoapIn">
    <wsdl:part element="tns:GetCitiesByCountry" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCitiesByCountryHttpGetIn">
    <wsdl:part name="CountryName" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCitiesByCountryHttpPostIn">
    <wsdl:part name="CountryName" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherHttpGetIn">
    <wsdl:part name="CityName" type="s:string">
    </wsdl:part>
    <wsdl:part name="CountryName" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherSoapIn">
    <wsdl:part element="tns:GetWeather" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherSoapOut">
    <wsdl:part element="tns:GetWeatherResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCitiesByCountryHttpPostOut">
    <wsdl:part element="tns:string" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherHttpGetOut">
    <wsdl:part element="tns:string" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherHttpPostOut">
    <wsdl:part element="tns:string" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetWeatherHttpPostIn">
    <wsdl:part name="CityName" type="s:string">
    </wsdl:part>
    <wsdl:part name="CountryName" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:portType name="GlobalWeatherHttpPost">
    <wsdl:operation name="GetWeather">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get weather report for all major cities around the world.</documentation>
      <wsdl:input message="tns:GetWeatherHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetWeatherHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get all major cities by country name(full / part).</documentation>
      <wsdl:input message="tns:GetCitiesByCountryHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCitiesByCountryHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="GlobalWeatherHttpGet">
    <wsdl:operation name="GetWeather">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get weather report for all major cities around the world.</documentation>
      <wsdl:input message="tns:GetWeatherHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetWeatherHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get all major cities by country name(full / part).</documentation>
      <wsdl:input message="tns:GetCitiesByCountryHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCitiesByCountryHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="GlobalWeatherSoap">
    <wsdl:operation name="GetWeather">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get weather report for all major cities around the world.</documentation>
      <wsdl:input message="tns:GetWeatherSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetWeatherSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get all major cities by country name(full / part).</documentation>
      <wsdl:input message="tns:GetCitiesByCountrySoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCitiesByCountrySoapOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="GlobalWeatherHttpPost" type="tns:GlobalWeatherHttpPost">
    <http:binding verb="POST"/>
    <wsdl:operation name="GetWeather">
      <http:operation location="/GetWeather"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
      <http:operation location="/GetCitiesByCountry"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="GlobalWeatherHttpGet" type="tns:GlobalWeatherHttpGet">
    <http:binding verb="GET"/>
    <wsdl:operation name="GetWeather">
      <http:operation location="/GetWeather"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
      <http:operation location="/GetCitiesByCountry"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="GlobalWeatherSoap" type="tns:GlobalWeatherSoap">
    <soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="GetWeather">
      <soap:operation soapAction="http://www.webserviceX.NET/GetWeather" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCitiesByCountry">
      <soap:operation soapAction="http://www.webserviceX.NET/GetCitiesByCountry" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="GlobalWeather">
    <wsdl:port binding="tns:GlobalWeatherSoap" name="GlobalWeatherSoap">
      <soap:address location="http://www.webservicex.net/globalweather.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:GlobalWeatherHttpPost" name="GlobalWeatherHttpPost">
      <http:address location="http://www.webservicex.net/globalweather.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:GlobalWeatherHttpGet" name="GlobalWeatherHttpGet">
      <http:address location="http://www.webservicex.net/globalweather.asmx"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>