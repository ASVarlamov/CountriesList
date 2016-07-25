package countriesFlags.views
{
	import countriesFlags.controller.events.ContextEvent;

	import flash.events.IEventDispatcher;

	import robotlegs.starling.bundles.mvcs.Mediator;

	public class MainScreenMediator extends Mediator
	{
		[Inject]
		public var view:MainScreen;

		[Inject]
		public var dispatcher:IEventDispatcher;

		public function MainScreenMediator()
		{
			super();
		}

		override public function initialize():void
		{
			trace("MSM: initialization complete");

			addContextListener(ContextEvent.ROBOTLEGS_INIT_COMPLETE, onConfigInitComplete);
		}

		private function onConfigInitComplete(event:ContextEvent):void
		{

		}
	}
}
