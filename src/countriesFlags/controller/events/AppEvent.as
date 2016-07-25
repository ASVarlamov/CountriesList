package countriesFlags.controller.events
{
	import flash.events.Event;

	public class AppEvent extends Event
	{
		public function AppEvent(type:String, bubbles:Boolean = false, data:Object = null)
		{
			super(type, bubbles, data);
		}
	}
}
