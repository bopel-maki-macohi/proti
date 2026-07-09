package maki.proti.objects;

class PriorityObject extends Object
{
	public static var highestPriority:Int = -1;

	public var priority(default, null):Int = highestPriority++;

	override public function new(id:String, ?priority:Null<Int>)
	{
		super(id);

		if (priority != null) this.priority = priority;
	}

	override function toString():String
	{
		return 'PriorityObject(id: $id, priority: $priority)';
	}
}
