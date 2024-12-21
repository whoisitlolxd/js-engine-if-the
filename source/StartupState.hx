package;

import flixel.input.keyboard.FlxKey;

#if VIDEOS_ALLOWED
#if (hxCodec >= "3.0.0" || hxCodec == "git")
import hxcodec.flixel.FlxVideo as MP4Handler;
#elseif (hxCodec == "2.6.1")
import hxcodec.VideoHandler as MP4Handler;
#elseif (hxCodec == "2.6.0")
import VideoHandler as MP4Handler;
#else
import vlc.MP4Handler;
#end
#end

class StartupState extends MusicBeatState
{
	var logo:FlxSprite;
	var skipTxt:FlxText;

	var maxIntros:Int = 5; // +2 for wega and rimon iirc?
	var maxSecretIntros:Int = 0; // trolley

	override public function create():Void
	{
		#if VIDEOS_ALLOWED
		maxIntros += 2;
		maxSecretIntros += 1;
		#end
		var theIntro:Int = FlxG.random.int(0, maxIntros);
		var theSecretIntro:Int = FlxG.random.int(0, maxSecretIntros);
		FlxTransitionableState.skipNextTransIn = true;
		FlxTransitionableState.skipNextTransOut = true;
		logo = new FlxSprite().loadGraphic(Paths.image('sillyLogo', 'splash'));
		logo.scrollFactor.set();
		logo.screenCenter();
		logo.alpha = 0;
		logo.active = true;
		add(logo);

		skipTxt = new FlxText(0, FlxG.height, 0, 'Press ENTER To Skip', 16);
		skipTxt.setFormat("Comic Sans MS Bold", 18, FlxColor.WHITE, LEFT, OUTLINE, FlxColor.BLACK);
		skipTxt.borderSize = 1.5;
		skipTxt.antialiasing = true;
		skipTxt.scrollFactor.set();
		skipTxt.alpha = 0;
		skipTxt.y -= skipTxt.textField.textHeight;
		add(skipTxt);

		FlxTween.tween(skipTxt, {alpha: 1}, 1);

		new FlxTimer().start(0.1, function(tmr:FlxTimer) {
			if (!FlxG.random.bool(0.25)){
				switch (theIntro) {
					case 0:
						FlxG.sound.play(Paths.sound('startup', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 1, "scale.y": 1}, 0.95, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone()});
					case 1:
						FlxG.sound.play(Paths.sound('startup', 'splash'));
						FlxG.sound.play(Paths.sound('FIREINTHEHOLE', 'splash'));
						logo.loadGraphic(Paths.image('lobotomy', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 1, "scale.y": 1}, 1.35, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone()});
					case 2:
						FlxG.sound.play(Paths.sound('screwedEngine', 'splash'));
						logo.loadGraphic(Paths.image('ScrewedLogo', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 1, "scale.y": 1}, 1.35, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone(0.6)});
					case 3:
						// secret muaahahhahhahaahha
						FlxG.sound.play(Paths.sound('tada', 'splash'));
						logo.loadGraphic(Paths.image('JavaScriptLogo', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 1, "scale.y": 1}, 1.35, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone(0.6)});
					case 4:
						// RIMON... hi cone!!!!!!!!!!!!!!!!!
						FlxG.sound.play(Paths.sound('startup', 'splash'));
						FlxG.sound.play(Paths.sound('evilLaugh', 'splash'));
						logo.loadGraphic(Paths.image('RIMON', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 0.75, "scale.y": 0.75}, 1.35, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone()});
					case 5:
						// Wega
						FlxG.sound.play(Paths.sound('startup', 'splash'));
						FlxG.sound.play(Paths.sound('wega scream', 'splash'));
						logo.loadGraphic(Paths.image('wega', 'splash'));
						logo.scale.set(0.1,0.1);
						logo.updateHitbox();
						logo.screenCenter();
						FlxTween.tween(logo, {alpha: 1, "scale.x": 1, "scale.y": 1}, 1.35, {ease: FlxEase.expoOut, onComplete: _ -> onIntroDone()});
					case 6:
						playVideo('bambiStartup');
					case 7:
						playVideo('broCopiedDenpa');
				}
			}
			else
			{
				switch (theSecretIntro)
				{
					case 0:
						playVideo('oops');
					case 1:
						playVideo('haxe');
				}
			}
		});

		super.create();
	}

	// shorter & cleaner code = better :3
	private function playVideo(name:String, ?callback:Void->Void):Void
	{
		#if VIDEOS_ALLOWED
			var vidSprite = new MP4Handler(); // it plays but it doesn't show???
			#if (hxCodec < "3.0.0")
			vidSprite.playVideo(Paths.video(name, 'splash'), false, false);
			vidSprite.finishCallback = function()
			{
				try { vidSprite.dispose(); }
				catch (e) {}
				if (callback != null)
					callback();
				else
					FlxG.switchState(TitleState.new);
			};
			#else
			vidSprite.play(Paths.video(name, 'splash'));
			vidSprite.onEndReached.add(function(){
				vidSprite.dispose();
				if (callback != null)
					callback();
				else
					FlxG.switchState(TitleState.new);
			});
			#end
		#end
	}

	function onIntroDone(?fadeDelay:Float = 0) {
		FlxTween.tween(logo, {alpha: 0}, 1, {
			startDelay: fadeDelay,
			ease: FlxEase.linear,
			onComplete: function(_) {
				FlxG.switchState(TitleState.new);
			}
		});
	}

	override function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ENTER && !alreadyPressed)
		{
			var skibidy:Int = FlxG.random.int(1, 10);
			alreadyPressed = true;
			if (skibidy > 7)
			{
				// hi neil staff if any of you are reading this
				// here's a special message
				// FUCK YO- /j
				// no niko i won't remove this
				// - 99whois
				logo.loadGraphic(Paths.image('BECAUSE SPRUNKI KILLED MY GRANDMA OKAY', 'splash')); // BECAUSE SPRUNKI KILLED MY GRANDMA OKAY
				logo.updateHitbox();
				logo.screenCenter();
				FlxG.sound.play(Paths.sound('GET OUT', 'splash'));
				new FlxTimer().start(0.25, function(tmr:FlxTimer) {
					FlxG.switchState(TitleState.new);
				});
			}
			else
			{
				FlxG.switchState(TitleState.new); // rizz
			}
		}
		super.update(elapsed);
	}
}
