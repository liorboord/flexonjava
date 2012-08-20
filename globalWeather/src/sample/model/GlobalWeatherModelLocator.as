package sample.model
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class GlobalWeatherModelLocator implements ModelLocator
	{
	   public static var WAITING_WAITING_FOR_SERVICE_RESPONSE : int		= 1;

       private static var modelLocator : GlobalWeatherModelLocator;
       
       public static function getInstance() : GlobalWeatherModelLocator 
       {
          if ( modelLocator == null )
              modelLocator = new GlobalWeatherModelLocator();
              
          return modelLocator;
       }
       
       public var cities:String;
       
       public var weather:String;
       
       public var workflowstate:int;
	}
}