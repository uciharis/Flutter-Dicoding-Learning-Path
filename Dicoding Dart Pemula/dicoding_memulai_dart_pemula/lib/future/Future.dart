void main() {
  /*final myFuture = Future(() async {
    print('creating the future');
    return 12;
  });
  // maka myFuture dijalankan sebelum terakhir

  print('main() done');
  // masih sesuai urutan*/

  getOrder().then((value) {
    // handle the success proggram
    print('You order : $value');
  }); // didelay selama 2 detik

  print('getting your order....');
  // sehingga semua kode di main tidak dalam Future
  // dijalankan dahulu
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'Coffee Boa');
}
