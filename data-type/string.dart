void main () {
  String str1 = 'hello';
  String str2 = '''Hello
                Dart'''; // 多行

  print(str1);
  print(str2);

  String str3 = 'Hello \n newming';
  print(str3);

  String str4 = r'Hello \n newming';
  print(str4); // 显示原始字符

  String str5 = '123';
  print(str5 + '333');
  print(str5 * 3);
  print(str5 == str4);
  print(str5[0]);

  print('${str4 + str5}');

  print(str5.isEmpty);
  print(str5.length);
}
