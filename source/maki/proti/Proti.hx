package maki.proti;

import maki.proti.objects.render.PlayerRenderObject;
import maki.proti.objects.render.RenderObjectCarrier;
import flixel.FlxState;

class Proti extends FlxState
{
	public var rendering_objects:RenderObjectCarrier;

	public var player:PlayerRenderObject;

	override public function create()
	{
		super.create();

		player = new PlayerRenderObject('player', 1000);
		rendering_objects = new RenderObjectCarrier();

		rendering_objects.add(player);

		player.screenCenter();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	override function draw()
	{
		super.draw();

		rendering_objects.draw(cameras);
	}
}
