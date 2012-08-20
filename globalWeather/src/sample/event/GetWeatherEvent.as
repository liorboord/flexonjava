package sample.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetWeatherEvent extends CairngormEvent
	{
		public static const GET_WEATHER : String	= "getWeather";
		
		public var countryName:String;
		public var citiyName:String;
		
		public function GetWeatherEvent(countryName:String,citiyName:String)
		{
			this.countryName = countryName;
			this.citiyName = citiyName;
			
			super(GET_WEATHER);
		}
	}
}