void main() {
  ///////////////////////////
  // [int, double, number] //
  ///////////////////////////
  // int, doubleはnumのサブタイプ
  // どちらかが入る場合はnumを指定する(使いたいときいつだ？)
  var i = 1; // int
  var d = 1.1; // double
  num n = 1; // num
  print(i);
  print(d);
  print(n);

  //////////////
  // [String] //
  //////////////
  var s = 'foo';
  var t = "bar";
  print('foo $s bar $t BAR ${t.toUpperCase()}');

  // raw文字列
  // 改行とかがそのまま反映される
  var raw = '''
abcde
fghij
''';

  print(raw);

  // これもraw文字列
  // \nがそのまま出力される
  var raw2 = r'abcde\n\n\n';
  print(raw2);

  ////////////
  // [bool] //
  ////////////
  // if や assertの引数はboolのみ
  var b = true;
  print(b);

  ////////////
  // [List] //
  ////////////
  var list = <int>[];
  list.add(100);
  list.add(200);
  list[1] = 101;
  assert(list[0] == 100);
  // list[1] と同じ
  assert(list.elementAt(1) == 101);
  // print(list[100]); indexにない場合は実行時エラー

  // これらは全部同じ
  var list1 = <int>[];
  var list2 = List<int>();
  List<int> list3 = [];
  print('$list1, $list2, $list3');

  // こんなことや
  var list4 = Iterable<int>.generate(3).toList();
  print(list4); // [0, 1, 2]

  // こんなこともできる
  var list5 = List<String>.generate(3, (i) => "a" + i.toString());
  print(list5); // [a0, a1, a2]

  ///////////
  // [Set] //
  ///////////
  // ユニークな値を保持する型
  Set set1 = {};
  set1.add(1000);
  // DartのSetは順序を持つらしい
  assert(set1.elementAt(0) == 1000);
  // set.elementAt(100); indexにない場合は実行時エラー

  // 型を書かないとMapになってしまうから注意
  var map = {};
  print(map);

  // 色々かけるがどれが良いのだろう
  const Set<String> set2 = {};
  const set3 = <String>{}; // <- これがいいかな？
  // var set4 = const Set<String>(); コンパイルエラー
  print('$set2, $set3');
}
