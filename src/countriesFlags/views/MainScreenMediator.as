package countriesFlags.views
{
	import countriesFlags.controller.events.AppEvent;
	import countriesFlags.core.ScreenNames;
	import countriesFlags.model.FlagsDataModel;

	import flash.events.IEventDispatcher;

	import robotlegs.starling.bundles.mvcs.Mediator;

	public class MainScreenMediator extends Mediator
	{

		[Inject]
		public var view:MainScreen;

		[Inject]
		public var dispatcher:IEventDispatcher;

		[Inject]
		public var flagsDataModel:FlagsDataModel;

		override public function initialize():void
		{
			trace("MSM: initialization complete");

			addContextListener(AppEvent.COUNTRY_LOADED, onCountryLoaded);
		}

		private function onCountryLoaded(event:AppEvent):void
		{
			flagsDataModel.currentFlagId = "CC";
			view.showScreen(ScreenNames.WELCOME_SCREEN);
		}
	}
}
