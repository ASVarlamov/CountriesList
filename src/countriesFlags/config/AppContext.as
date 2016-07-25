package countriesFlags.config
{
	import robotlegs.bender.framework.impl.Context;
	import robotlegs.starling.bundles.mvcs.StarlingBundle;
	import robotlegs.starling.extensions.contextView.ContextView;

	import starling.core.Starling;

	public class AppContext extends Context
	{
		public function AppContext(starling:Starling)
		{
			install(StarlingBundle).configure(StartupConfig, new ContextView(starling));
		}
	}
}
