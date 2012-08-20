package sample.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetCitiesByCountryEvent extends CairngormEvent
	{
		public static const GET_CITIES_BY_COUNTRY : String	= "getCitiesByCountry";
		public var countryName:String;
		
		public function GetCitiesByCountryEvent(countryName:String)
		{
			this.countryName = countryName;
			super(GET_CITIES_BY_COUNTRY, bubbles, cancelable);
		}	
	}
}