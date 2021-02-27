abstract class Vegetables {
  // class cannot be assigned to object
  String _name; // make name is encapsulated
  String _type;
  double _size;

  Vegetables(this._name, this._type, this._size);

  set name(value) => _name = value;
  String get name => _name;

  set type(value) => _type = value;
  String get type => _type;

  set size(value) => _size = value;
  double get size => _size;

  void nameVegetables() {
    print('Vegetables: $name');
  }

  void typeVegetables() {
    print('Vegetables: $type');
  }

  void sizeVegetables(){
    print('Vegetables: $size');
  }
}