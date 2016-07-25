package countriesFlags.views
{
	import feathers.controls.Label;
	import feathers.controls.Screen;
	import feathers.layout.AnchorLayout;
	import feathers.themes.MetalWorksMobileTheme;

	public class MainScreen extends Screen
	{
		public function MainScreen()
		{
			new MetalWorksMobileTheme();
		}

		public function showLabel():void
		{
			var label:Label = new Label();
			label.text = "First start";
			addChild(label);
		}

		override protected function initialize():void
		{
			super.initialize();

			autoSizeMode = AUTO_SIZE_MODE_STAGE;
			this.layout = new AnchorLayout();
			showLabel();
		}
	}
}
