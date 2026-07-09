package maki.proti.objects.render;

import flixel.FlxCamera;

class RenderObjectCarrier extends PriorityObjectCarrier<RenderObject>
{
	public function draw(cameras:Array<FlxCamera>)
	{
		if (cameras == null || cameras.length == null) return;

		for (object in objects)
		{
			if (object.sprite != null)
			{
				object.sprite.cameras = cameras;
				object.sprite.draw();
			}
		}
	}
}
