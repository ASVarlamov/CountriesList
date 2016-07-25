package countriesFlags.views
{
	import countriesFlags.controller.events.AppEvent;

	import flash.events.IEventDispatcher;

	import robotlegs.starling.bundles.mvcs.Mediator;

	public class WelcomeScreenMediator extends Mediator
	{
		[Inject]
		public var view:WelcomeScreen;

		[Inject]
		public var dispatcher:IEventDispatcher;

		public function WelcomeScreenMediator()
		{
			super();
		}

		override public function initialize():void
		{
			trace("MSM: initialization complete");

			addContextListener(AppEvent.SELECT_COUNTRY, onSelectCountry);
		}

		private function onSelectCountry(event:AppEvent):void
		{
			view.setCountry(event.data)
		}
	}
}
