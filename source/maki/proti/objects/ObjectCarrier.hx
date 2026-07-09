package maki.proti.objects;

class ObjectCarrier<T:Object>
{
	public var max_length(default, null):Int = -1;

	var objects(default, null):Array<T> = [];

	public function new(max_length:Int = -1)
	{
		this.max_length = max_length;
	}

	public function add(object:T)
	{
		if (max_length > 0 && objects.length >= max_length) return;

		if (object == null) return;
		if (objects.indexOf(object) > -1) return;

		objects.push(object);
	}

	public function remove(object:T)
	{
		if (objects.indexOf(object) == -1) return;

		objects.remove(object);
	}

	public function forEach(method:T->Void)
	{
		if (method == null) return;

		for (object in objects)
			method(object);
	}
}
