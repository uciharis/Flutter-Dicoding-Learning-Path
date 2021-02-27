void main() {
  Function sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);
//  Hello
//  50
}

void myHigherOrderFunction(
    String message,
    int Function(int num1, int num2) myFunction) {
  
  print(message);
  // print(myFunction('Hello', (num1, num2) => num1 + num2));
  print(myFunction(20,30));
}

