import 'package:dicoding_memulai_dart_pemula/object_oriented_proggramming/mixin/People.dart';
import 'Mixin.dart';

class Male extends People with Walkable, Swimmable { }

class female extends People with Walkable, Swimmable, Flyable { }

void main() {
  var adi = Male();
  var nila = female();

  adi.walk(); // I'm walking
  adi.swim(); // I'm Swimming

  nila.fly(); // I'm Flying
}
