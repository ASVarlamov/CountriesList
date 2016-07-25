package countriesFlags.theme
{
	import feathers.controls.Label;
	import feathers.themes.MetalWorksMobileTheme;

	import flash.text.TextFormatAlign;

	public class AppTheme extends MetalWorksMobileTheme
	{

		public function AppTheme()
		{

		}

		override protected function initialize():void
		{
			super.initialize();

			getStyleProviderForClass(Label).defaultStyleFunction = setLabelStyles;
		}

		private function setLabelStyles(label:Label):void
		{
			label.padding = 10;
			label.textRendererProperties.wordWrap = true;
			label.textRendererProperties.elementFormat = this.lightElementFormat;
			label.textRendererProperties.textAlign = TextFormatAlign.CENTER;
		}
	}
}
