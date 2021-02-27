import 'dart:io';

void main() {
  List<int> numberList = [1, 2, 3, 4, 5, 6];
  var numberList1 = [1, 2, 3, 4, 5, 6];
  var stringList = ['Adi', 'Nugraha', 'Putra'];

  List dynamicList = [1, 2, 'Adi', 2.0, true]; // dynamicList
  print(dynamicList[1]); // 2

  stringList.add('Handsome'); // Add the data at last of list
  stringList.insert(0, 'Nila'); // add the data to specific index
  stringList[2] = 'Union'; // Nugraha change to Union

  stringList.remove('Union'); // Remove string Union
  stringList.removeAt(1); // Remove at index 1
  stringList.removeLast(); // Me-remove last element
  numberList.removeRange(0, 3); // Remove range index 4-5

  for (var i = 0; i < stringList.length; i++) {
    print(stringList[i]); // Adi, Nugraha, Putra
  }

  print('==========');
  stringList.forEach((s) => print(s)); // Adi, Nugraha, Putra
}
