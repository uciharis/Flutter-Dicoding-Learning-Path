void main() {
  getOrder().then((value) {
    print('You order: $value');
  }).catchError((error) { // handle the error
    print('Sorry. $error');
  });
  print('Getting your order...');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false; // stoknya tidak tersedia
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.'; // blok dieksekusi
    }
  });
}
