void main() {
  greetNewUser(age: 20, name: 'Adi', isVerified: true);
  // Adi 20 true
}

void greetNewUser({String name = 'Dicoding', int age = 5, bool isVerified = false}) {
  print('$name $age $isVerified');
}