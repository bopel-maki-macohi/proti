package maki.proti.objects;

class Object
{
	public var id(default, null):String;

	public function new(id:String)
	{
		this.id = id;
	}

	public function toString():String
	{
		return 'Object(id: $id)';
	}
}
