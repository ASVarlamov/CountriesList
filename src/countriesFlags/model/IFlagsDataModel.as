package countriesFlags.model
{

	public interface IFlagsDataModel
	{
		function get flagList():Object;
		function set flagList(flags:Object):void;

		function get currentFlagId():String;
		function set currentFlagId(flag_id:String):void;


	}
}
