package maki.proti.objects.render;

class RenderObject extends PriorityObject
{
	public var render_asset:String = '';

	override public function new(id:String, ?render_asset:String, ?priority:Null<Int>)
	{
		super(id, priority);

		this.render_asset = render_asset ?? id;
	}

	override function toString():String
	{
		return 'RenderObject(id: $id, priority: $priority, render_asset: $render_asset)';
	}

	public dynamic function getAsset():String
	{
		return 'assets/$render_asset';
	}
}
