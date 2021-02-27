void main() {
  var numberSet = {1, 2, 3};

  numberSet.add(4); // 1, 2, 3, 4
  numberSet.addAll({5, 6, 7}); // 1, 2, 3, 4, 5, 6, 7
  numberSet.remove(3); // 1, 2, 4, 5, 6, 7

  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  // data with same value representing as 1 value
  // setA = 1, setB = 1 => union : 1
  var union = setA.union(setB); // 1, 2, 4, 5, 7
  var intersection = setA.intersection(setB); // 1, 5

  print(union);
  print(intersection);
  print('==============');
  print(numberSet.elementAt(2));
  print(numberSet);
}
