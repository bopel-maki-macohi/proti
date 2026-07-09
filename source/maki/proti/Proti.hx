package maki.proti;

import flixel.FlxSprite;
import maki.proti.objects.render.RenderObject;
import maki.proti.objects.render.PlayerRenderObject;
import maki.proti.objects.render.RenderObjectCarrier;
import flixel.FlxState;

class Proti extends FlxState
{
	public var rendering_objects:RenderObjectCarrier;

	public var player:PlayerRenderObject;
	public var testing_object:RenderObject;

	override public function create()
	{
		super.create();

		player = new PlayerRenderObject('player', 1000);
		rendering_objects = new RenderObjectCarrier();

		rendering_objects.add(player);

		player.screenCenter();
		
		testing_object = new RenderObject('testing', new FlxSprite().loadGraphic(Paths.texture('misc')), 0);
		testing_object.screenCenter();
		rendering_objects.add(testing_object);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		rendering_objects.update(elapsed);
	}

	override function draw()
	{
		super.draw();

		rendering_objects.draw(cameras);
	}
}
