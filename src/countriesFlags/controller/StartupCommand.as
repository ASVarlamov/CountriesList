package countriesFlags.controller
{
	import flash.events.IEventDispatcher;

	import robotlegs.bender.bundles.mvcs.Command;

	public class StartupCommand extends Command
	{
		[Inject]
		public var dispatcher:IEventDispatcher;

		override public function execute():void
		{
			trace("startup complete")
		}
	}
}
