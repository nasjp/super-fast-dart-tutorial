void main() {
  // 変数のデフォルトはnull、ゼロ値はない。
  // なので、初期化はなるべくする。
  int hoge;
  assert(hoge == null);

  // final は再代入不可
  final name = 'Bob';
  print(name);
  // 型の記載は不要
  final String nickname = 'Bobby';
  print(nickname);
  // OK
  final List<int> a = [1, 2, 3];
  // メモリ領域には変更可能
  a[0] = 4;

  // コンパイル定数
  // メモリ領域も変更不可能
  const int i = 0;
  print(i);
  // i = 2; コンパイルエラー
  const List<int> b = [1, 2, 3];
  print(b);
  // b[0] = 4; コンパイルエラー

  // staticはクラススコープでしか使用できない
  // static int j = 0; コンパイルエラー
}

// 変数メンバーにstaticをつけると、クラス変数になる
// そのクラスのインスタンスに関係なくただひとつそのオブジェクトが用意される
class A {
  static int a;
  static var b;
  static final int c = 3;
  static const int d = 4;
}
