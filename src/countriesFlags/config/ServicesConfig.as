package countriesFlags.config
{
	import countriesFlags.service.FlagsDataService;
	import countriesFlags.service.IFlagsDataService;

	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	public class ServicesConfig implements IConfig
	{

		[Inject]
		public var injector:IInjector;

		public function configure():void
		{
			injector.map(IFlagsDataService).toSingleton(FlagsDataService);
		}
	}
}