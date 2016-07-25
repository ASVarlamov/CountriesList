package countriesFlags.config
{

	import countriesFlags.views.WelcomeScreen;
	import countriesFlags.views.WelcomeScreenMediator;

	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.starling.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.starling.extensions.viewProcessorMap.api.IViewProcessorMap;

	public class MediatorsConfig implements IConfig
	{

		[Inject]
		public var views:IViewProcessorMap;

		[Inject]
		public var mediatorMap:IMediatorMap;

		public function configure():void
		{
			mediatorMap.map(WelcomeScreen).toMediator(WelcomeScreenMediator);
		}
	}
}
