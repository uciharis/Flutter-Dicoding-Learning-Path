import 'Animal.dart';

void main() {
  var dicodingCat = Animal('Pussy', 2, 54.0);

  dicodingCat.eat();
  dicodingCat.sleep();
  dicodingCat.poop();

  print(dicodingCat.weight);
  /*  Pussy is eating, age is 2
      Pussy is sleeping
      Pussy is pooping
      54.1  */
}
