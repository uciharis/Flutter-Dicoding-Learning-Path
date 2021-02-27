import 'package:dicoding_memulai_dart_pemula/object_oriented_proggramming/inheritance/Cat.dart';

void main() {
  var meowCat = Cat('Jason', 3, 2.5, 'Orange');
  meowCat.walk();
  meowCat.eat(); // Jason is eating, age is 3
  print(meowCat.weight); // 2.5 + 0.2 = 2.7
}
