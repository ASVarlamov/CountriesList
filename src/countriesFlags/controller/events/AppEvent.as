package countriesFlags.controller.events
{
	import flash.events.Event;

	public class AppEvent extends Event
	{
		public static const SELECT_COUNTRY:String = "SELECT_COUNTRY";

		public var data:Object;

		public function AppEvent(type:String, bubbles:Boolean = false, data:Object = null)
		{
			this.data = data;
			super(type, bubbles);
		}
	}
}
