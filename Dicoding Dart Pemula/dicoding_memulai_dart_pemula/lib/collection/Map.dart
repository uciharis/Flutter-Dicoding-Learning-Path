void main() {
  // key -> value
  var capital = {
    'Jakarta': 'Indonesia',
    'Kuala Lumpur': 'Malaysia',
    'Delhi': 'India'
  };
  capital['Jayapura'] = 'Papua';

  print(capital['Jakarta']); // Indonesia
  print(capital.keys); // Jakarta, Kuala Lumpur, Delhi, Jayapura
  print(capital.values); // Indonesia, Malaysia, India, Papua
}
