package countriesFlags.views
{
	import feathers.controls.Label;
	import feathers.controls.Screen;
	import feathers.themes.MetalWorksMobileTheme;

	public class MainScreen extends Screen
	{
		public function MainScreen()
		{
			new MetalWorksMobileTheme();

			var label:Label = new Label();
			label.text = "First start";
			addChild(label);
		}

	}
}
