package options;

class FunSettingsSubstate extends BaseOptionsMenu
{
	public function new()
	{
		var logo:FlxSprite = new FlxSprite();
		var sigma:Bool = false;
		title = 'Fun';
		rpcTitle = 'Fun Settings Menu'; //for Discord Rich Presence

		//I'd suggest using "Chars & BG" as an example for making your own option since it is the simplest here
		var option:Option = new Option('Lanky', //Name
			'Button', //Description
			'Lanky', //Save data variable name
			'bool', //Variable type
			true); //Default value
		option.onChange = function() {
			if (sigma) return;
			ClientPrefs.Lanky = true;
			sigma = true;
			logo.alpha = 1;
			logo.loadGraphic(Paths.image('lankybox', 'funny'));
			logo.updateHitbox();
			logo.screenCenter();
			FlxG.sound.play(Paths.sound('lankybox jumpscare', 'funny'));
			new FlxTimer().start(1, function(tmr:FlxTimer) {
				logo.alpha = 0;
			});
			sigma = false;
		}
		addOption(option);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}
