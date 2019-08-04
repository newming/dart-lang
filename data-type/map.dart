void main() {
  var map1 = {
    'first': 'value1',
    1: 1,
    true: false
  };
  print(map1);
  print(map1['first']);
  print(map1[true]);
  map1[true] = true;
  print(map1);

  var map = {
    'first': 'dart',
    'second': 'python',
    'third': 'java'
  };
  print(map.length);
  print(map.isEmpty);
  print(map.keys);
  print(map.values);

  print(map.containsKey('first'));

  map.remove('third');
  print(map);

  map.forEach(f);

  var list = ['1', '2', '3'];
  print(list.asMap());
}

void f(key, value) {
  print('key=$key, value=$value');
}