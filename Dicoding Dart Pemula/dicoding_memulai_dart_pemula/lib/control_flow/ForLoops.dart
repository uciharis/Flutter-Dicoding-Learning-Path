import 'dart:io';

void main() {
  // nested loops
  for (var i = 1; i <= 10; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }
}
