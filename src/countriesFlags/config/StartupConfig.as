package countriesFlags.config
{
	import countriesFlags.controller.events.ContextEvent;

	import flash.events.IEventDispatcher;

	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IContext;

	public class StartupConfig implements IConfig
	{
		[Inject]
		public var context:IContext;

		[Inject]
		public var eventDispatcher:IEventDispatcher;

		public function configure():void
		{
			context.configure(ModelsConfig, ServicesConfig, ControllersConfig, MediatorsConfig);

			eventDispatcher.dispatchEvent(new ContextEvent(ContextEvent.ROBOTLEGS_INIT_COMPLETE));
			trace("Init complete");
		}
	}
}
