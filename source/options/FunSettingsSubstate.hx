package options;

class FunSettingsSubstate extends BaseOptionsMenu
{
	public function new()
	{
		var logo:FlxSprite = new FlxSprite().loadGraphic(Paths.image('lankybox', 'funny'));
		logo.scrollFactor.set();
		logo.screenCenter();
		logo.alpha = 0;
		logo.active = true;
		add(logo);

		/*
		logo = new FlxSprite().loadGraphic(Paths.image('sillyLogo', 'splash'));
		logo.scrollFactor.set();
		logo.screenCenter();
		logo.alpha = 0;
		logo.active = true;
		add(logo);
		No I'm not going to rant again I'm reading
		*/
		
		var sigma:Bool = false;
		title = 'Fun';
		rpcTitle = 'Fun Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Lanky', //Name
			'Button', //Description
			'Lanky', //Save data variable name
			'bool', //Variable type
			true); //Default value
		option.onChange = function():Void {
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

		var option:Option = new Option('testin', //Name
			'Does nothing. To test stuff.', //Description
			'testin', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		
		var option:Option = new Option('Nothing', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing1', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		// you can use this one as a template


		// this part will be removed probably
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		var option:Option = new Option('THE NOTHING FLOOD', //Name
			'Another option that does literally nothing.\nAs the option above says, it\'s a testing option.', //Description
			'nothing2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		// hehe this will be removed later

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}
