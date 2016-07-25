package countriesFlags.config
{

	import countriesFlags.model.FlagsDataModel;

	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	public class ModelsConfig implements IConfig
	{

		[Inject]
		public var injector:IInjector;

		public function configure():void
		{
			injector.map(FlagsDataModel).asSingleton();
		}
	}
}
