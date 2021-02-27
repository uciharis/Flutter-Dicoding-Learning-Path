import 'dart:io';

void main() {
  var primeNumber = [2, 3, 5, 7, 11, 13, 15, 17, 19,];
  stdout.write('Input prime number : ');
  var searchNumber = int.parse(stdin.readLineSync());

  for (var i = 0; i < primeNumber.length; i++) {
    if (searchNumber == primeNumber[i]) {
      print('$searchNumber adalah bilangan prima ke- ${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumber[i]}');
  }

  print('===========================');
  breakContinue();
}

/*11 != 2
11 != 3
11 != 5
11 != 7
11 adalah bilangan prima ke- 5*/

void breakContinue() {
  for (int i = 1; i < 8; i++) {
    if (i % 2 == 0) {
      continue; // skip the odd value
    }
    print(i);
  }
}
