package countriesFlags.views
{
	import countriesFlags.theme.AppTheme;

	import feathers.controls.Button;
	import feathers.controls.ImageLoader;
	import feathers.controls.Label;
	import feathers.controls.LayoutGroup;
	import feathers.controls.Screen;
	import feathers.layout.AnchorLayout;
	import feathers.layout.AnchorLayoutData;

	public class WelcomeScreen extends Screen
	{
		private var _container:LayoutGroup;

		private var _flagImage:ImageLoader;
		private var _flagLabel:Label;
		private var _selectButton:Button;


		public function WelcomeScreen()
		{
			new AppTheme();
		}

		override protected function initialize():void
		{
			super.initialize();
			this.layout = new AnchorLayout();
			autoSizeMode = AUTO_SIZE_MODE_STAGE;

			_container = new LayoutGroup();
			_container.layout = new AnchorLayout();
			_container.layoutData = new AnchorLayoutData();
			(_container.layoutData as AnchorLayoutData).percentWidth = 100;
			(_container.layoutData as AnchorLayoutData).verticalCenter = 0;
			(_container.layoutData as AnchorLayoutData).percentHeight = 100;
			addChild(_container);


			_flagImage = new ImageLoader();
			_flagImage.layoutData = new AnchorLayoutData();
			(_flagImage.layoutData as AnchorLayoutData).percentWidth = 80;
			(_flagImage.layoutData as AnchorLayoutData).top = 80;
			(_flagImage.layoutData as AnchorLayoutData).horizontalCenter = 0;
			_container.addChild(_flagImage);

			_flagLabel = new Label();
			_flagLabel.layoutData = new AnchorLayoutData(0);
			(_flagLabel.layoutData as AnchorLayoutData).percentWidth = 80;
			(_flagLabel.layoutData as AnchorLayoutData).top = 0;
			(_flagLabel.layoutData as AnchorLayoutData).horizontalCenter = 0;
			(_flagLabel.layoutData as AnchorLayoutData).topAnchorDisplayObject = _flagImage;
			_container.addChild(_flagLabel);

			_selectButton = new Button();
			_selectButton.label = "Pick your Country";
			_selectButton.layoutData = new AnchorLayoutData(0);
			(_selectButton.layoutData as AnchorLayoutData).percentWidth = 80;
			(_selectButton.layoutData as AnchorLayoutData).top = 60;
			(_selectButton.layoutData as AnchorLayoutData).horizontalCenter = 0;
			(_selectButton.layoutData as AnchorLayoutData).topAnchorDisplayObject = _flagLabel;
			_container.addChild(_selectButton)
		}

		public function setCountry(country_data:Object):void
		{
			var flag_id:String = country_data.key.toLowerCase();
			//https://github.com/hjnilsson/country-flags/raw/master/png250px/ad.png
			_flagImage.source = "https://github.com/hjnilsson/country-flags/raw/master/png250px/" + flag_id + ".png";
			_flagLabel.text = country_data.value;
		}
	}
}
