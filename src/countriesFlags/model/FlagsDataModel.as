package countriesFlags.model
{
	import flash.events.IEventDispatcher;

	public class FlagsDataModel implements IFlagsDataModel
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;

		private var _flags:Object;
		private var _selectedFlag:String;

		public function get flagList():Object
		{
			return _flags;
		}

		public function set flagList(flags:Object):void
		{
			_flags = flags;
		}

		public function get currentFlagId():String
		{
			return _selectedFlag;
		}

		public function set currentFlagId(flag_id:String):void
		{
			_selectedFlag = flag_id;
		}
	}
}
