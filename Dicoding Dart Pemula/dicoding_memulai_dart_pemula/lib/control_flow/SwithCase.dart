import 'dart:io';

void main() {
  stdout.write('Input first number : ');
  var firstNumber = num.parse(stdin.readLineSync());
  stdout.write('Input operator [+, -, / , *] ');
  var operator = stdin.readLineSync();
  stdout.write('Input second number : ');
  var secondNumber = num.parse(stdin.readLineSync());

  switch (operator) {
    case '+':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;
    default:
      print('Operator not found');
  }
}
