package countriesFlags.service
{
	import countriesFlags.controller.events.AppEvent;
	import countriesFlags.model.FlagsDataModel;

	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class FlagsDataService implements IFlagsDataService
	{
		[Inject]
		public var flagsModel:FlagsDataModel;

		[Inject]
		public var dispatcher:IEventDispatcher;

		private var _loader:URLLoader;

		public function loadflasgs():void
		{
			var request:URLRequest = new URLRequest("https://github.com/hjnilsson/country-flags/raw/master/countries.json");

			_loader = new URLLoader(request);

			_loader.addEventListener(Event.COMPLETE, requestLoaded);
			_loader.addEventListener(IOErrorEvent.IO_ERROR, requestError);
			_loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, requestError);
		}

		protected function requestLoaded(event:Event):void
		{
			var loaded_flags:Object = JSON.parse(_loader.data as String) as Object;

			if(loaded_flags)
			{
				var res:Object = {};

				for(var key:String in loaded_flags)
				{
					res[key] = {key:key, value:loaded_flags[key]};
				}

				flagsModel.flagList = res;

				dispatcher.dispatchEvent(new AppEvent(AppEvent.SELECT_COUNTRY, false, res["CC"]));
			}
		}

		protected function requestError(error:*):void
		{
			if (error is IOErrorEvent)
			{
				trace("IOErrorEvent error: " + IOErrorEvent(error).type,
						[
							IOErrorEvent(error).errorID,
							IOErrorEvent(error).toString()
						]);
			}
			else if (error is SecurityErrorEvent)
			{
				trace("SecurityErrorEvent error: " + SecurityErrorEvent(error).type,
						[
							SecurityErrorEvent(error).errorID,
							SecurityErrorEvent(error).toString()
						]);
			}
			else
			{
				trace("Unknown error: " + error.type,
						[
							new Error(error.toString())
						]);
			}
		}
	}
}
