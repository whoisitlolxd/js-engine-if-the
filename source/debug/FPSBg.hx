// sorry hrk i might ask next time...
// i will remove on request, i just thought this looked nice.

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
		relocate(0, 0, ClientPrefs.data.wideScreen);
	    return bgCard; // idk
    }

	public inline function relocate(X:Float, Y:Float, isWide:Bool = false) {
		if (isWide) {
			x = X; y = Y;
		} else {
			x = FlxG.game.x + X;
			y = FlxG.game.y + Y;
		}
	}
}
