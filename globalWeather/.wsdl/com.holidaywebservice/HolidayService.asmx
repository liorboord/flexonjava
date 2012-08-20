<?xml version="1.0" encoding="UTF-8"?><wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.27seconds.com/Holidays/" targetNamespace="http://www.27seconds.com/Holidays/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.27seconds.com/Holidays/">
      <s:import namespace="http://www.w3.org/2001/XMLSchema"/>
      <s:element name="GetCountriesAvailable">
        <s:complexType/>
      </s:element>
      <s:element name="GetCountriesAvailableResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetCountriesAvailableResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysAvailable">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="countryCode" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysAvailableResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetHolidaysAvailableResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidayDate">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="countryCode" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="holidayName" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="1" name="year" type="s:int"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidayDateResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="1" name="GetHolidayDateResult" type="s:dateTime"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForYear">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="countryCode" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="1" name="year" type="s:int"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForYearResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetHolidaysForYearResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForMonth">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="countryCode" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="1" name="year" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="month" type="s:int"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForMonthResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetHolidaysForMonthResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForDateRange">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="countryCode" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="1" name="startDate" type="s:dateTime"/>
            <s:element maxOccurs="1" minOccurs="1" name="endDate" type="s:dateTime"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHolidaysForDateRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="GetHolidaysForDateRangeResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema"/>
            <s:any/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="dateTime" type="s:dateTime"/>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetCountriesAvailableHttpPostOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableSoapOut">
    <wsdl:part element="tns:GetHolidaysAvailableResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCountriesAvailableSoapIn">
    <wsdl:part element="tns:GetCountriesAvailable" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpPostOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCountriesAvailableHttpPostIn">
  </wsdl:message>
  <wsdl:message name="GetHolidayDateSoapOut">
    <wsdl:part element="tns:GetHolidayDateResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpGetIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="startDate" type="s:string">
    </wsdl:part>
    <wsdl:part name="endDate" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpPostIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="holidayName" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpPostOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableSoapIn">
    <wsdl:part element="tns:GetHolidaysAvailable" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpPostOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCountriesAvailableSoapOut">
    <wsdl:part element="tns:GetCountriesAvailableResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthSoapOut">
    <wsdl:part element="tns:GetHolidaysForMonthResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthSoapIn">
    <wsdl:part element="tns:GetHolidaysForMonth" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpGetOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpGetOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpGetIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpGetIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpPostIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
    <wsdl:part name="month" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearHttpPostIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpPostOut">
    <wsdl:part element="tns:dateTime" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeSoapOut">
    <wsdl:part element="tns:GetHolidaysForDateRangeResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpPostOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpPostIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearSoapOut">
    <wsdl:part element="tns:GetHolidaysForYearResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCountriesAvailableHttpGetOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeHttpPostIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="startDate" type="s:string">
    </wsdl:part>
    <wsdl:part name="endDate" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpGetOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysAvailableHttpGetOut">
    <wsdl:part element="tns:DataSet" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetCountriesAvailableHttpGetIn">
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpGetIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="holidayName" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidayDateSoapIn">
    <wsdl:part element="tns:GetHolidayDate" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForMonthHttpGetIn">
    <wsdl:part name="countryCode" type="s:string">
    </wsdl:part>
    <wsdl:part name="year" type="s:string">
    </wsdl:part>
    <wsdl:part name="month" type="s:string">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidayDateHttpGetOut">
    <wsdl:part element="tns:dateTime" name="Body">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForDateRangeSoapIn">
    <wsdl:part element="tns:GetHolidaysForDateRange" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="GetHolidaysForYearSoapIn">
    <wsdl:part element="tns:GetHolidaysForYear" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:portType name="HolidayServiceSoap">
    <wsdl:operation name="GetCountriesAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the countries supported.</documentation>
      <wsdl:input message="tns:GetCountriesAvailableSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCountriesAvailableSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysAvailableSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidayDateSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForYearSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForMonthSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForDateRangeSoapOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="HolidayServiceHttpPost">
    <wsdl:operation name="GetCountriesAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the countries supported.</documentation>
      <wsdl:input message="tns:GetCountriesAvailableHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCountriesAvailableHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysAvailableHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidayDateHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForYearHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForMonthHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeHttpPostIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForDateRangeHttpPostOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="HolidayServiceHttpGet">
    <wsdl:operation name="GetCountriesAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the countries supported.</documentation>
      <wsdl:input message="tns:GetCountriesAvailableHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetCountriesAvailableHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the available holidays.</documentation>
      <wsdl:input message="tns:GetHolidaysAvailableHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysAvailableHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the date of a specific holiday.</documentation>
      <wsdl:input message="tns:GetHolidayDateHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidayDateHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for an entire year.</documentation>
      <wsdl:input message="tns:GetHolidaysForYearHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForYearHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a specific month.</documentation>
      <wsdl:input message="tns:GetHolidaysForMonthHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForMonthHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Get the holidays for a date range.</documentation>
      <wsdl:input message="tns:GetHolidaysForDateRangeHttpGetIn">
    </wsdl:input>
      <wsdl:output message="tns:GetHolidaysForDateRangeHttpGetOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="HolidayServiceSoap" type="tns:HolidayServiceSoap">
    <soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="GetCountriesAvailable">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetCountriesAvailable" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetHolidaysAvailable" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetHolidayDate" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetHolidaysForYear" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetHolidaysForMonth" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
      <soap:operation soapAction="http://www.27seconds.com/Holidays/GetHolidaysForDateRange" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="HolidayServiceHttpPost" type="tns:HolidayServiceHttpPost">
    <http:binding verb="POST"/>
    <wsdl:operation name="GetCountriesAvailable">
      <http:operation location="/GetCountriesAvailable"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <http:operation location="/GetHolidaysAvailable"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <http:operation location="/GetHolidayDate"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <http:operation location="/GetHolidaysForYear"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <http:operation location="/GetHolidaysForMonth"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
      <http:operation location="/GetHolidaysForDateRange"/>
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded"/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="HolidayServiceHttpGet" type="tns:HolidayServiceHttpGet">
    <http:binding verb="GET"/>
    <wsdl:operation name="GetCountriesAvailable">
      <http:operation location="/GetCountriesAvailable"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysAvailable">
      <http:operation location="/GetHolidaysAvailable"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidayDate">
      <http:operation location="/GetHolidayDate"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForYear">
      <http:operation location="/GetHolidaysForYear"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForMonth">
      <http:operation location="/GetHolidaysForMonth"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHolidaysForDateRange">
      <http:operation location="/GetHolidaysForDateRange"/>
      <wsdl:input>
        <http:urlEncoded/>
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="HolidayService">
<documentation xmlns="http://schemas.xmlsoap.org/wsdl/">Web service that calculates national holidays for the country code provided.</documentation>
    <wsdl:port binding="tns:HolidayServiceHttpGet" name="HolidayServiceHttpGet">
      <http:address location="http://www.holidaywebservice.com/Holidays/HolidayService.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:HolidayServiceHttpPost" name="HolidayServiceHttpPost">
      <http:address location="http://www.holidaywebservice.com/Holidays/HolidayService.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:HolidayServiceSoap" name="HolidayServiceSoap">
      <soap:address location="http://www.holidaywebservice.com/Holidays/HolidayService.asmx"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>