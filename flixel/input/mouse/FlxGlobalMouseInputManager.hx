package flixel.input.mouse;

class FlxGlobalMouseInputManager {
	public static var inUse:Bool = false;
	public static var global:FlxBasic;

	public static function mouseInput(of: FlxBasic):Bool
	{
		if(global != of && !inUse)
		{
			inUse = !inUse;
			if(!inUse)
			{
				global = null;
			}
			else
			{
				global = of;
			}
		}
	}
}
