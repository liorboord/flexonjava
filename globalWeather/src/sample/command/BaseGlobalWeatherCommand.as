package sample.command
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	
	import net.webservicex.BaseGlobalWeather;
	
	import sample.model.GlobalWeatherModelLocator;

	public class BaseGlobalWeatherCommand implements Responder, Command
	{
		protected var service:BaseGlobalWeather
		protected var model:GlobalWeatherModelLocator;
		
		public function BaseGlobalWeatherCommand()
		{
			//get the ws instance
			service = BaseGlobalWeather(ServiceLocator.getInstance()
				.getService("globalWeatherService"));
			model = GlobalWeatherModelLocator.getInstance();
		}
		
		public function execute(event:CairngormEvent):void
		{
			//you must override this
			 throw new Error("Abstract method not implemented");
		}
		
		/**
		 * Generic on result, all results eventualy goes here
		 */
		public function onResult(event:*=null):void
		{
			//the service returned a response, update the model
			model.workflowstate = -1;
		}
		
		/**
		 * Generic fault handler all fault responses goes here
		 */
		public function onFault(event:*=null):void
		{
			//the service returned a fault response, update the model and wanr the user
			model.workflowstate = -1;
			Alert.show("An error has accourd:"+event.toString());	
		}
	}
}