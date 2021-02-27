void main() {
  var isRaining = true;
  var weather = isRaining && false;

  print('Prepare going to office.');
  if (weather) {
    print("Oh. It's raining, bring an umbrella."); // if true execute this command
  } else {
    print('enjoying'); // if else execute this command
  }

  print('Going to the office.');

  var now  = 10;
  var openHours = 5;

  // write if else different style
  var shopStatus = now > openHours ? 'Hello we are open' : "Sorry, we've closed";
  print(shopStatus); // Hello we're open

  // write if else different style
  var name;
  var buyer = name ?? 'Adi';
  print(buyer); // Adi => karena name null
}
