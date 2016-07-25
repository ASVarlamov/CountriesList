package
{

	import countriesFlags.config.AppContext;

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;

	import robotlegs.bender.framework.api.IContext;

	import starling.core.Starling;

	import countriesFlags.views.MainScreen;

	[SWF(frameRate="60", backgroundColor="#F2F2F2")]
	public class App extends Sprite
	{
		private var _starling:Starling;
		private var _context:IContext;

		public function App()
		{
			if (stage)
			{
				init();
			}
			else
			{
				addEventListener(Event.ADDED_TO_STAGE, init);
			}
		}

		private function init(event:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			Starling.multitouchEnabled = true;

			_starling = new Starling(MainScreen, this.stage);
			_starling.stage3D.addEventListener(Event.CONTEXT3D_CREATE, starlingContextCreateCompleteHandler);
			_starling.showStatsAt("left", "bottom");

			_starling.supportHighResolutions = true;
			_starling.start();

			stage.addEventListener(Event.RESIZE, stage_resizeHandler, false, int.MAX_VALUE, true);
		}

		private function stage_resizeHandler(event:Event):void
		{
			_starling.stage.stageWidth = stage.stageWidth;
			_starling.stage.stageHeight = stage.stageHeight;

			var viewPort:Rectangle = _starling.viewPort;
			viewPort.width = stage.stageWidth;
			viewPort.height = stage.stageHeight;

			try
			{
				_starling.viewPort = viewPort;
			}
			catch (error:Error)
			{
				trace(error.message, [error]);
			}
		}

		private function starlingContextCreateCompleteHandler(event:Event):void
		{
			_starling.stage3D.removeEventListener(Event.CONTEXT3D_CREATE, starlingContextCreateCompleteHandler);

			_context = new AppContext(_starling);
		}
	}
}
