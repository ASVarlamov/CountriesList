package countriesFlags.config
{
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	public class ServicesConfig implements IConfig
	{

		[Inject]
		public var injector:IInjector;

		public function configure():void
		{

		}
	}
}