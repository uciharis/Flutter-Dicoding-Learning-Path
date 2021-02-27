void main() {
  greet('adi', 2000);
  /* hallo adi! tahun ini anda berusia 20 */

  var firstNumber = 7;
  var secondNumber = 10;
  print('rata-rata dari $firstNumber & $secondNumber is ${average(firstNumber, secondNumber)}');
  // rata-rata dari 7 & 10 is 8.5
}

void greet(String name, bornYear) { // function yang tidak mengambalikan nilai
  var age = 2020 - bornYear;
  print('hallo $name! tahun ini anda berusia $age');
}

double average(num num1, num num2) => (num1 + num2) / 2;