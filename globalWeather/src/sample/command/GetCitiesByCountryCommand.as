package sample.command
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.rpc.AsyncToken;
	
	import sample.event.GetCitiesByCountryEvent;
	import sample.model.GlobalWeatherModelLocator;
	
	public class GetCitiesByCountryCommand extends BaseGlobalWeatherCommand
	{
		public override function execute(event:CairngormEvent):void
		{
			var e:GetCitiesByCountryEvent = GetCitiesByCountryEvent(event);
			var token:AsyncToken = service.getCitiesByCountry(e.countryName);
			token.addEventListener("result",onResult);
			token.addEventListener("fault",onFault);
			model.workflowstate = GlobalWeatherModelLocator.WAITING_WAITING_FOR_SERVICE_RESPONSE;
		}
		
		public override function onResult(event:*=null):void
		{
			//handle specific command taks here
			model.cities = event.result;
			super.onResult(event);
		}
	}
}