import 'Future.dart';

Future<void> main() async {
  // async block make the program as run in synchronous mode
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order : $order');
  } catch (e) {
    print('Error: ' + e.message);
  }

  /* Getting your order...
  *  You order : Coffe Boa */
}
