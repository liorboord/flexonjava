
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.webservicex{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IGlobalWeather
    {
    	//Stub functions for the GetWeather operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param CityName
    	 * @param CountryName
    	 * @return An AsyncToken
    	 */
    	function getWeather(cityName:String,countryName:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getWeather_send():AsyncToken;
        
        /**
         * The getWeather operation lastResult property
         */
        function get getWeather_lastResult():String;
		/**
		 * @private
		 */
        function set getWeather_lastResult(lastResult:String):void;
       /**
        * Add a listener for the getWeather operation successful result event
        * @param The listener function
        */
       function addgetWeatherEventListener(listener:Function):void;
       
       
        /**
         * The getWeather operation request wrapper
         */
        function get getWeather_request_var():GetWeather_request;
        
        /**
         * @private
         */
        function set getWeather_request_var(request:GetWeather_request):void;
                   
    	//Stub functions for the GetCitiesByCountry operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param CountryName
    	 * @return An AsyncToken
    	 */
    	function getCitiesByCountry(countryName:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCitiesByCountry_send():AsyncToken;
        
        /**
         * The getCitiesByCountry operation lastResult property
         */
        function get getCitiesByCountry_lastResult():String;
		/**
		 * @private
		 */
        function set getCitiesByCountry_lastResult(lastResult:String):void;
       /**
        * Add a listener for the getCitiesByCountry operation successful result event
        * @param The listener function
        */
       function addgetCitiesByCountryEventListener(listener:Function):void;
       
       
        /**
         * The getCitiesByCountry operation request wrapper
         */
        function get getCitiesByCountry_request_var():GetCitiesByCountry_request;
        
        /**
         * @private
         */
        function set getCitiesByCountry_request_var(request:GetCitiesByCountry_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseGlobalWeather;
	}
}