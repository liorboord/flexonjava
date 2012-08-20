
/**
 * GlobalWeatherService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:GlobalWeather= new GlobalWeather();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addGetWeatherEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.GetWeather(myCityName,myCountryName);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.webservicex.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:GlobalWeather id="myService">
  *   <srv:GetWeather_request_var>
  *		<srv:GetWeather_request CityName=myValue,CountryName=myValue/>
  *   </srv:GetWeather_request_var>
  * </srv:GlobalWeather>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.GetWeather_send()" />
  */
 package net.webservicex{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation GetWeather completes with success
     * and returns some data
     * @eventType GetWeatherResultEvent
     */
    [Event(name="GetWeather_result", type="net.webservicex.GetWeatherResultEvent")]
    
    /**
     * Dispatches when a call to the operation GetCitiesByCountry completes with success
     * and returns some data
     * @eventType GetCitiesByCountryResultEvent
     */
    [Event(name="GetCitiesByCountry_result", type="net.webservicex.GetCitiesByCountryResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class GlobalWeather extends EventDispatcher implements IGlobalWeather
	{
    	private var _baseService:BaseGlobalWeather;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function GlobalWeather(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseGlobalWeather(destination,rootURL);
        }
        
		//stub functions for the GetWeather operation
          

        /**
         * @see IGlobalWeather#GetWeather()
         */
        public function getWeather(cityName:String,countryName:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getWeather(cityName,countryName);
            _internal_token.addEventListener("result",_GetWeather_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IGlobalWeather#GetWeather_send()
		 */    
        public function getWeather_send():AsyncToken
        {
        	return getWeather(_GetWeather_request.CityName,_GetWeather_request.CountryName);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _GetWeather_request:GetWeather_request;
		/**
		 * @see IGlobalWeather#GetWeather_request_var
		 */
		[Bindable]
		public function get getWeather_request_var():GetWeather_request
		{
			return _GetWeather_request;
		}
		
		/**
		 * @private
		 */
		public function set getWeather_request_var(request:GetWeather_request):void
		{
			_GetWeather_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _GetWeather_lastResult:String;
		[Bindable]
		/**
		 * @see IGlobalWeather#GetWeather_lastResult
		 */	  
		public function get getWeather_lastResult():String
		{
			return _GetWeather_lastResult;
		}
		/**
		 * @private
		 */
		public function set getWeather_lastResult(lastResult:String):void
		{
			_GetWeather_lastResult = lastResult;
		}
		
		/**
		 * @see IGlobalWeather#addGetWeather()
		 */
		public function addgetWeatherEventListener(listener:Function):void
		{
			addEventListener(GetWeatherResultEvent.GetWeather_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _GetWeather_populate_results(event:ResultEvent):void
        {
        var e:GetWeatherResultEvent = new GetWeatherResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             getWeather_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the GetCitiesByCountry operation
          

        /**
         * @see IGlobalWeather#GetCitiesByCountry()
         */
        public function getCitiesByCountry(countryName:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCitiesByCountry(countryName);
            _internal_token.addEventListener("result",_GetCitiesByCountry_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IGlobalWeather#GetCitiesByCountry_send()
		 */    
        public function getCitiesByCountry_send():AsyncToken
        {
        	return getCitiesByCountry(_GetCitiesByCountry_request.CountryName);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _GetCitiesByCountry_request:GetCitiesByCountry_request;
		/**
		 * @see IGlobalWeather#GetCitiesByCountry_request_var
		 */
		[Bindable]
		public function get getCitiesByCountry_request_var():GetCitiesByCountry_request
		{
			return _GetCitiesByCountry_request;
		}
		
		/**
		 * @private
		 */
		public function set getCitiesByCountry_request_var(request:GetCitiesByCountry_request):void
		{
			_GetCitiesByCountry_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _GetCitiesByCountry_lastResult:String;
		[Bindable]
		/**
		 * @see IGlobalWeather#GetCitiesByCountry_lastResult
		 */	  
		public function get getCitiesByCountry_lastResult():String
		{
			return _GetCitiesByCountry_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCitiesByCountry_lastResult(lastResult:String):void
		{
			_GetCitiesByCountry_lastResult = lastResult;
		}
		
		/**
		 * @see IGlobalWeather#addGetCitiesByCountry()
		 */
		public function addgetCitiesByCountryEventListener(listener:Function):void
		{
			addEventListener(GetCitiesByCountryResultEvent.GetCitiesByCountry_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _GetCitiesByCountry_populate_results(event:ResultEvent):void
        {
        var e:GetCitiesByCountryResultEvent = new GetCitiesByCountryResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             getCitiesByCountry_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IGlobalWeather#getWebService()
		 */
		public function getWebService():BaseGlobalWeather
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addGlobalWeatherFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
