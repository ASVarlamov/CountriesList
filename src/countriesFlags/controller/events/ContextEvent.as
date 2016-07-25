package countriesFlags.controller.events
{
	import flash.events.Event;

	public class ContextEvent extends Event
	{
		public static const ROBOTLEGS_INIT_COMPLETE:String = "ROBOTLEGS_INIT_COMPLETE";

		public function ContextEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

	}
}
