package countriesFlags.views
{
	import countriesFlags.controller.events.AppEvent;
	import countriesFlags.model.FlagsDataModel;

	import flash.events.IEventDispatcher;

	import robotlegs.starling.bundles.mvcs.Mediator;

	public class WelcomeScreenMediator extends Mediator
	{
		[Inject]
		public var view:WelcomeScreen;

		[Inject]
		public var dispatcher:IEventDispatcher;

		[Inject]
		public var flagsDataModel:FlagsDataModel;

		override public function initialize():void
		{
			trace("MSM: initialization complete");

			addContextListener(AppEvent.SELECT_COUNTRY, onSelectCountry);

			if (flagsDataModel.currentFlagId)
			{
				view.setCountry(flagsDataModel.flagList[flagsDataModel.currentFlagId]);
			}
		}

		private function onSelectCountry(event:AppEvent):void
		{
			view.setCountry(event.data)
		}
	}
}
