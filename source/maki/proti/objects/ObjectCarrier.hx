package maki.proti.objects;

class ObjectCarrier<T:Object>
{
	public var max_length(default, null):Int = -1;

	var objects(default, null):Array<T> = [];

	public function new(?max_length:Null<Int>)
	{
		this.max_length = max_length ?? -1;
	}

	public function add(object:T)
	{
		if (max_length > 0 && objects.length >= max_length) return;

		if (object == null) return;
		if (objects.indexOf(object) > -1) return;

		objects.push(object);

		defaultSort();
	}

	public function remove(object:T)
	{
		if (objects.indexOf(object) == -1) return;

		objects.remove(object);

		defaultSort();
	}

	public function forEach(method:T->Void)
	{
		if (method == null) return;

		for (object in objects)
			method(object);
	}

	public function sort(sort_method:T->T->Int)
	{
		if (sort_method != null) objects.sort(sort_method);
	}

	public function defaultSort()
	{
		sort(function(object_a, object_b)
		{
			return 0;
		});
	}

	public function update(elapsed:Float)
	{
		forEach(function(object)
		{
			object?.update(elapsed);
		});
	}

	public function getIDs():Array<String> return [for (object in objects) object?.id];
}
