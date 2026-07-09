package maki.proti.objects;

import flixel.util.FlxSort;

class PriorityObjectCarrier<T:PriorityObject> extends ObjectCarrier<T>
{
	override function defaultSort()
	{
		sort(function(object_a, object_b)
		{
			return FlxSort.byValues(FlxSort.ASCENDING, object_a.priority, object_b.priority);
		});
	}
}
