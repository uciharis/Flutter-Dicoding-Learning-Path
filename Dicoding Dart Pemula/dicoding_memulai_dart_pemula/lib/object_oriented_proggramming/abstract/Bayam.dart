import 'Vegetable.dart';

class Cucumber extends Vegetables {
  // to make object extends Vegetables
  Cucumber(String name, String type, double size)
      : super(name, type, size);

  @override
  void nameVegetables() {
    print('Name of bayam : $name');
  }

  @override
  void sizeVegetables() {
  print('size of bayam : $size');
  }

  @override
  void typeVegetables() {
    print('type of bayam : $type');
  }
}
