var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need to pay : ${price - discount}');
//  you need to pay : 270000.0
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }
  return discount;
}
