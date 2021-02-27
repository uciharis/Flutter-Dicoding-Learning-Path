void variabel(String name, int age) {
  var greetings = 'Hello $name';
  print(greetings);

  var myAge = 20;
  print('and my Age $age'); // 20

  var x; // bisa diinisialisasi berkali-kali
  x = 7;
  x = "makan";
}

void main() {
  variabel("Adi", 20);
  /* Hello Adi
     and my Age 20 */
}
