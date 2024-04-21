/**
 * クラス
 */

// --- 通常の書き方 ---
class Point {
  Point(int xPosition, int yPosition)
      : x = xPosition,
        y = yPosition;
  int x;
  int y;
}

// --- 糖衣構文 ---
class Point2 {
  Point2(this.x, this.y);
  int x;
  int y;
}

// --- Getter/StreamIterator ---
class User {
  User(this.id, this._pass);

  final int id;
  String _pass;

  // カスタムゲッタ
  // パスワードを伏せ字にして返す
  String get pass => '****';

  // カスタムセッタ
  // パスワードをハッシュ化して保存する
  set pass(String newPass) {
    _pass = newPass + ':::hashed';
  }
}

// constantコンストラクタ => constに代入したインスタンスは再利用される
// 名前付きコンストラクタ => インスタンス生成時に名前を付ける。複数定義できる
// factoryコンストラクタ => キャッシュ再利用される無駄のないインスタンス生成を行う

// --- 継承 ---
class Animal {
  void eat() {
    print('もぐもぐ');
  }
}

class Dog extends Animal {
  void bark() {
    print('ワンワン！');
  }

  @override // アノテーションは推奨であり必須ではない
  void eat() {
    print('ガツガツ');
  }
}

void main() {
  final dog = Dog();
  dog.eat();
  dog.bark();
}
