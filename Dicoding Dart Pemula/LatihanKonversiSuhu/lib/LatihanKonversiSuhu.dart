import 'package:LatihanKonversiSuhu/LatihanKonversiSuhu.dart';
import 'dart:io';

void main(List<String> args) {
  convert();
}

void convert() {
  print('Masukan Suhu dalam farenheit: ');
  var farenheit = num.parse(stdin.readLineSync());

  var celcius = (farenheit - 32) * 5 / 9;

  print('$farenheit derajat Farenheit  = $celcius derajat celcius');
}
