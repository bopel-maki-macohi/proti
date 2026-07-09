package maki.proti;

class Paths
{
	public static function asset(path:String):String return 'assets/$path';

	public static function texture(path:String):String return asset('textures/$path.png');
}
