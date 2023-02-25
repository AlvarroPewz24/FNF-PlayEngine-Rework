/*package display;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import openfl.Lib;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import flixel.FlxG;
import haxe.Timer;
import openfl.events.Event;
import openfl.text.TextField;
import openfl.text.TextFormat;
#if gl_stats
import openfl.display._internal.stats.Context3DStats;
import openfl.display._internal.stats.DrawCallContext;
#end
#if flash
import openfl.Lib;
#end
#if openfl
import openfl.system.System;
#end
/**The FPS class provides an easy-to-use monitor to display the current frame rate of an OpenFL project**/
#if !openfl_debug
@:fileXml('tags="haxe,release"')
@:noDebug
#end
class FPS extends TextField
{
  public var currentFPS(default, null):Int;

	@:noCompletion private var cacheCount:Int;

	@:noCompletion private var currentTime:Float;

  @:noCompletion private var times:Array<Float>;

	public function new(x:Float = 15, y:Float = 15, color:Int = 0x000000)
		{
		super();

		this.x = x;
		this.y = y;
		
		currentFPS = 0;
		selectable = false;
		mouseEnabled = false;
		defaultTextFormat = new TextFormat(Paths.("vcr.ttf"), 14, color);
		text = "FPS: ";
		autoSize = LEFT;
		multiline = true;
		
		cacheCount = 0;
		currentTime = 0;
		times = [];

		#if flash
		addEventListener(Event.ENTER_FRAME, function(e)
		{
			var time = Lib.getTimer();
			__enterFrame(time - currentTime);
		});
		#end
		}

		@:noCompletion
	private #if !flash override #end function __enterFrame(deltaTime:Float):Void
	{
		currentTime += deltaTime;
		times.push(currentTime);

		while (times[0] < currentTime - 1000)
		{
			times.shift();
		}

		var currentCount = times.length;
		currentFPS = Math.round((currentCount + cacheCount) / 2);

				if (currentCount != cacheCount && visible)
		{
			textColor = 0xFFFFFFFF;

			text = FlxG.save.data.fps ? "FPS: "	+ currentFPS;

			#if (gl_stats && !disable_cffi && (!html5 || !canvas))
			text += "\ntotalDC: " + Context3DStats.totalDrawCalls();

			text += "\nstageDC: " + Context3DStats.contextDrawCalls(DrawCallContext.STAGE);
			text += "\nstage3DDC: " + Context3DStats.contextDrawCalls(DrawCallContext.STAGE3D);
			#end
		}
	}
}*/
