package countriesFlags.config
{
	import countriesFlags.controller.StartupCommand;
	import countriesFlags.controller.events.ContextEvent;

	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.framework.api.IConfig;

	public class ControllersConfig implements IConfig
	{

		[Inject]
		public var commandMap:IEventCommandMap;

		public function configure():void
		{
			commandMap.map(ContextEvent.ROBOTLEGS_INIT_COMPLETE).toCommand(StartupCommand);
		}
	}
}
