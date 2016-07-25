package countriesFlags.controller
{
	import countriesFlags.service.IFlagsDataService;

	import flash.events.IEventDispatcher;

	import robotlegs.bender.bundles.mvcs.Command;

	public class StartupCommand extends Command
	{
		[Inject]
		public var dispatcher:IEventDispatcher;

		[Inject]
		public var flagsService:IFlagsDataService;



		override public function execute():void
		{
			trace("startup complete");

			flagsService.loadflasgs();
		}
	}
}
