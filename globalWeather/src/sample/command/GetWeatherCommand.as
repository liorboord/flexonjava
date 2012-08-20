package sample.command
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.rpc.AsyncToken;
	
	import sample.event.GetWeatherEvent;
	import sample.model.GlobalWeatherModelLocator;
	
	public class GetWeatherCommand extends BaseGlobalWeatherCommand
	{
		public override function execute(event:CairngormEvent):void
		{
			var e:GetWeatherEvent = GetWeatherEvent(event);
			var token:AsyncToken = service.getWeather(e.countryName,e.citiyName);
			token.addEventListener("result",onResult);
			token.addEventListener("fault",onFault);
			model.workflowstate = GlobalWeatherModelLocator.WAITING_WAITING_FOR_SERVICE_RESPONSE;
		}
		
		public override function onResult(event:*=null):void
		{
			//handle specific command taks here
			super.onResult(event);
		}
	}
}