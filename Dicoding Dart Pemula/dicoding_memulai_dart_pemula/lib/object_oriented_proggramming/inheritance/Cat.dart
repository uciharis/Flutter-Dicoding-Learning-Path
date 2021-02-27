import 'package:dicoding_memulai_dart_pemula/object_oriented_proggramming/class/Animal.dart';

class Cat extends Animal {
  String furColor;

  Cat(String name, int age, double weight, this.furColor)
      : super(name, age, weight);

  void walk() {
    print('$name is walking');
  }
}
