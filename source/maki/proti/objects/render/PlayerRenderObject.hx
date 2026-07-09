package maki.proti.objects.render;

import flixel.FlxSprite;

class PlayerRenderObject extends RenderObject
{
	override public function new(id:String, ?priority:Null<Int>)
	{
		var temp_asset:FlxSprite = new FlxSprite();
		temp_asset.loadGraphic(Paths.texture('player'));

		super(id, temp_asset, priority);
	}
}
