void exception() {
  try {
    var a = 0, b = 7;
    print(b ~/ a);
  } catch (e) {
    print(
        'action happened : $e');
  }
}

void main() {
  exception(); // exception happened : IntegerDivisionByZeroException
}
