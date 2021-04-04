void main() {
  // 型推論
  var i = 3;
  print(i); // 3

  // Generics
  List<int> list = [1, 2, 3];
  print(list); // [1, 2, 3]
  List<dynamic> list2 = ['a', 1, 1.1]; // 全型
  print(list2); // [a, 1, 1.1]
}
