package options;

class OptimizationSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Optimization';
		rpcTitle = 'Optimization Settings Menu'; //for Discord Rich Presence

		//I'd suggest using "Chars & BG" as an example for making your own option since it is the simplest here
		var option:Option = new Option('Chars & BG', //Name
			'If unchecked, gameplay will only show the HUD.', //Description
			'charsAndBG', //Save data variable name
			'bool', //Variable type
			true); //Default value
		addOption(option);

		var option:Option = new Option('Enable GC',
			"If checked, then the game will be allowed to garbage collect, reducing RAM usage I suppose.\nIf you experience memory leaks, turn this on, and\nif you experience lag with it on then turn it off.",
			'enableGC',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Light Opponent Strums',
			"If this is unchecked, the Opponent strums won't light up when the Opponent hits a note.",
			'opponentLightStrum',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Light Botplay Strums',
			"If this is unchecked, the Player strums won't light when Botplay is active.",
			'botLightStrum',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Light Player Strums',
			"If this is unchecked, then uh.. the player strums won't light up.\nit's as simple as that.",
			'playerLightStrum',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Show Ratings',
			"If unchecked, the game will not show a rating sprite when hitting a note.",
			'ratingPopups',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Show Combo Numbers',
			"If unchecked, the game will not show combo numbers when hitting a note.",
			'comboPopups',
			'bool',
			true);
		addOption(option);
		
		var option:Option = new Option('Show MS Popup',
			"If checked, hitting a note will also show how late/early you hit it.",
			'showMS',
			'bool',
			false);
		addOption(option);
		
		var option:Option = new Option('Disable onSpawnNote Lua Calls',
			"If checked, the game will not call onSpawnNote when a note is spawned.\nIf you have a script that uses that, maybe leave it on.",
			'noSpawnFunc',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Disable Note Hit Lua Calls',
			"If checked, the game will not call note hit functions when a note is hit.",
			'noHitFuncs',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Disable Skipped Note Lua Calls',
			"If checked, the game will not call note hit functions for skipped notes.",
			'noSkipFuncs',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Even LESS Botplay Lag',
			"Reduce Botplay lag even further.",
			'lessBotLag',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Fast Note Spawning',
			"If checked, the game will use a faster type of note recycling.\n(HEAVILY WIP, SO USE AT YOUR OWN RISK!)",
			'fastNoteSpawn',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Note render limit', //Name
			'If checked, self explanatory. How stupid are you to not know?\nWith this disabled, max note cap is disabled.', //Description
			'coolNoteCap', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		/*var option:Option = new Option('Note render limit OLD', //Name
			'Old version of the above option.', //Description
			'coolNoteCap2', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);
		// unused
		*/

		var option:Option = new Option('Max notes',
			'The note limit.\nWorks ONLY if the above option is enabled.\nForce-enabled in the chart editor, will be fixed in the future.',
			'maxNotes',
			'int',
			256);
		option.scrollSpeed = 600;
		option.minValue = 0;
		option.maxValue = 694209924;
		option.displayFormat = '%v note(s)';
		addOption(option);

		var option:Option = new Option('runNoteThingBeforeUpdate', //Name
			'Keep this on if you don\'t want buggy or randomly appearing notes.\nIt\'s kinda funny though.', //Description
			'runNoteThingBefore', //Save data variable name
			'bool', //Variable type
			true); //Default value
		addOption(option);

		var option:Option = new Option('Disable note sorting', //Name
			'Self explanatory.\nif you still don\'t know then how stupid are you LOL\n- 99whois', //Description
			'screwTheNoteSorting', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}
