package options;

class FunSettingsSubstate extends BaseOptionsMenu
{
	public function new()
	{
		var logo:FlxSprite = new FlxSprite().loadGraphic(Paths.image('lankybox', 'funny'));
		logo.updateHitbox();
		logo.screenCenter();
		logo.alpha = 0;
		var sigma:Bool = false;
		title = 'Fun';
		rpcTitle = 'Fun Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Lanky', //Name
			'Button', //Description
			'Lanky', //Save data variable name
			'bool', //Variable type
			true); //Default value
		option.onChange = function() {
			ClientPrefs.Lanky = true;
			sigma = true;
			logo.alpha = 1;
			FlxG.sound.play(Paths.sound('lankybox jumpscare', 'funny'));
			new FlxTimer().start(1, function(tmr:FlxTimer) {
				logo.alpha = 0;
				sigma = false;
			});
		}
		addOption(option);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}
