void main() {
  var closureExample = calculate(2);
  closureExample();
  closureExample();
  /* value is 30
  *  value is 4 */
}

Function calculate(base) {
  var count = 1;
  return () => print('value is ${base + count++}');
}
