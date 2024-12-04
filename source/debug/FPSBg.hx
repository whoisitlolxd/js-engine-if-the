// sorry hrk i might ask next time...
// i will remove on request, i just thought this looked nice.
// and i'm new to haxe i hate it so much here already help me please

package debug;

import openfl.events.EventType;
import openfl.display.Sprite;

class FPSBg extends Sprite
{
	var bgCard:Sprite;
	var isShow:Bool = false;
	public function new()
	{
		super();
		
		bgCard = new Sprite();
		bgCard.graphics.beginFill(0x000000, 0.5);
		bgCard.graphics.drawRect(0, 0, 300, 55);
		bgCard.graphics.endFill();
		addChild(bgCard);
		relocate(0, 0, false);
		return bgCard; // idk
	}
	
	public function invis():Void
	{
		bgCard.graphics.beginFill(0x000000, 0);
		bgCard.graphics.drawRect(0, 0, 300, 55);
		bgCard.graphics.endFill();
		relocate(0, 0, false);
		isShow = false;
	}

	public function vis():Void
	{
		bgCard.graphics.beginFill(0x000000, 0.5);
		bgCard.graphics.drawRect(0, 0, 300, 55);
		bgCard.graphics.endFill();
		relocate(0, 0, false);
		isShow = true;
	}
	// again i'm new to haxe please don't criticize me
	public inline function relocate(X:Float, Y:Float, isWide:Bool = false) {
		if (isWide) {
			x = X; y = Y;
		} else {
			x = FlxG.game.x + X;
			y = FlxG.game.y + Y;
		}
	}
}
