package maki.proti.objects.render;

import flixel.util.FlxAxes;
import flixel.FlxSprite;

class RenderObject extends PriorityObject
{
	public var sprite:FlxSprite;

	override public function new(id:String, ?sprite:FlxSprite, ?priority:Null<Int>)
	{
		super(id, priority);

		this.sprite = sprite;
	}

	override function toString():String
	{
		return 'RenderObject(id: $id, priority: $priority, sprite: $sprite)';
	}

	public function screenCenter(axes:FlxAxes = XY) sprite?.screenCenter(axes);
}
