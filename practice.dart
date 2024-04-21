/**
 * 基礎構文
 */

// ---ジェネリクスクラス---
class Box<T> {
  // ジェネリクス型のプロパティ
  T value;

  // コンストラクタ
  Box(this.value);

  // メソッド
  void printValue() {
    print('Value stored in the box: $value');
  }

  T getValue() {
    return value;
  }

  T? findFirstNonNull<T>(List<T?> values) {
    for (var value in values) {
      if (value != null) {
        return value;
      }
    }
    return null;
  }
}

void main() {
  final x = 1;
  final hex = 0xFF;
  final exponent = 1e5;
  print('''
    x: ${x}
    hex:${hex}
    exponent: ${exponent}
    ''');
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }

  // --- List ---
  final numberList = <int>[1, 2, 3];
  numberList.add(4);
  print(numberList);

  // --- Set ---
  final fruitsSet = {'apple', 'orange', 'grape'};
  fruitsSet.add('cherry');
  print(fruitsSet);

  // --- Map ---
  final statusMap = <int, String>{
    200: 'success',
    404: 'not found',
  };

  statusMap[500] = 'server error';
  print(statusMap);

  // ---Record(タプル) ---
  // 辞書のような概念。一度設定したら値は変えられないし増やせない。
  final record1 = (300, 'cake');
  final record2 = (name: 'cake', 1, price: 300, 99);
  print(record1);
  print(record2);
  // => (99, name: cake, price: 300) 1,99は位置フィールド。先頭に来るので注意
  print(record2.$2);
  // => 99 $nで指定して値を取得する

  // ---Objectクラス---
  // 型の異なる要素を持ったコレクションを扱う場合などに使われる
  final obj = {1, 'a', true};
  print(obj);

  // ---ジェネリクス---
  final List<int> intList = [0, 1, 2];
  final stringList = <String>['a', 'b', 'c'];

  // --- ジェネリクスクラス---
  final intBox = Box(3);
  final stringBox = Box('box');
  print(intBox.getValue());
  print(stringBox.getValue());

  List<String?> fruitsList = [null, 'apple', null, 'banana', null];
  var firstNonNullString = stringBox.findFirstNonNull(fruitsList);
  print(
      'First non-null string: $firstNonNullString'); // First non-null string: Hello

  // ---カスケード記法---
  final sb = StringBuffer()
    ..write('Hello')
    ..write(' ')
    ..write('World!');
  print(sb);

  // ---スプレッド構文---
  final weekends = ['土', '日'];
  final weekdays = ['月', '火', '水', '木', '金'];
  final weeks = [...weekdays, ...weekends];
  print(weeks);

  // ---制御構文演算子---
  // コレクションリテラル内でifやforが記述できる
  final includsBiped = true; // 二足歩行
  final animals = ['dog', 'cat', if (includsBiped) 'human'];
  print(animals);

  // ---if-case文---
  final (String?, int?) response = ('ok', 200);
  if (response case (String message, int statusCode) when statusCode == 200) {
    print('success! response message: ${message}, statusCode: ${statusCode}.');
  } else {
    print('no response received.');
  }

  // ---switch文---
  final String color = 'yellow';

  switch (color) {
    case 'yellow':
      print('be carefull');
      continue other;
    case 'red':
      print('stop');
    case 'blue':
    case 'green':
      print('go');
    other:
    default:
      print('stay');
  }

  // ---switch式---
  final int logStatusCode = 500;
  final logMsg = switch (logStatusCode) {
    >= 100 && < 200 => 'info',
    >= 200 && < 300 => 'success',
    _ => 'unknown',
  };
  print(logMsg);

  // --- Error ---
  try {
    // do somethind.
    throw ArgumentError('test');
  } catch (e, st) {
    print('エラー補足');
    print(e);
    print(st);
  }

  // 引数
  void makeColor(int red, int green, int blue, [int? alphal]) {
    // do something.
  }
}
