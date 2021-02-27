import 'dart:io';

void dataType() {
  print('nama anda : ');
  var name = stdin.readLineSync();

  print('usia anda : ');
  var age = int.parse(stdin.readLineSync());

  print('my name is $name and my age $age');
}

void main() {
  dataType();
}
