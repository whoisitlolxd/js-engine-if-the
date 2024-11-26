package options;

class FunSettingsSubstate extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Fun';
		rpcTitle = 'Fun Settings Menu'; //for Discord Rich Presence

		//I'd suggest using "Chars & BG" as an example for making your own option since it is the simplest here
		var option:Option = new Option('Lanky', //Name
			'Button', //Description
			'Lanky', //Save data variable name
			'bool', //Variable type
			true); //Default value
		addOption(option);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}
