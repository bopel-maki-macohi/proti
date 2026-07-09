package maki.proti.objects.render;

class RenderObjectCarrier extends PriorityObjectCarrier<RenderObject>
{
	public function getAssets():Array<String>
	{
		return [for (object in objects) object?.getAsset()];
	}
}
