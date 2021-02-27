class Functional {
  // lambda
  int sum(int num1, int num2) => num1 + num2;
}

int fibonacci(n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  // create a lambda
  var multiplication = (int num1, int num2) => num1 * num2;
  Function printLambda = () => print('this is lambda Function');

  var functional = Functional();

  print(printLambda);
  print(multiplication(20, 20));
  print(functional.sum(10, 20)); // 30
}
