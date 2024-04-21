/**
 * 関数
 */

// 引数
void func1(int param1, [int? param2 = 2]) {
  print('param1: $param1  param2: $param2');
}

// 名前付き引数
void func2({int? param1, int? param2}) {
  print('param1: $param1  param2: $param2');
  // => param1: null  param2: 222
}

// アロー関数
int func3(int param1) => param1 * 2;

// 第一級関数(変数に代入が可能)
final int Function(int) func4 = func3;

void main() {
  func1(1);
  func2(param2: 222);
  print(func3(3));
  print(func4(4));
}
