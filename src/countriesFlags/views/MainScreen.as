package countriesFlags.views
{
	import countriesFlags.core.ScreenNames;
	import countriesFlags.theme.AppTheme;

	import feathers.controls.Screen;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.layout.AnchorLayoutData;

	public class MainScreen extends Screen
	{
		private var _navigator:ScreenNavigator;

		public function MainScreen()
		{
			super();
			new AppTheme();
		}

		override protected function initialize():void
		{
			_navigator = new ScreenNavigator();
			_navigator.layoutData = new AnchorLayoutData();
			(_navigator.layoutData as AnchorLayoutData).top = 0;
			(_navigator.layoutData as AnchorLayoutData).bottom = 0;

			var welcomeScreen:ScreenNavigatorItem = new ScreenNavigatorItem(WelcomeScreen);
			_navigator.addScreen(ScreenNames.WELCOME_SCREEN, welcomeScreen);

			var selectScreen:ScreenNavigatorItem = new ScreenNavigatorItem(CountrySelectorScreen);
			_navigator.addScreen(ScreenNames.SELECT_SCREEN, selectScreen);
			addChild(_navigator);
		}

		public function showScreen(scree_id:String):void
		{
			_navigator.showScreen(scree_id);
		}
	}
}
