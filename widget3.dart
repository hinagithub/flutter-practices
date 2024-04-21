import 'package:flutter/material.dart';

void main() {
  runApp(
    const Center(
      child: Counter(),
    ),
  );
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

// Counterウィジェットの状態を管理するプライベートクラス
class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  // build = ウィジェットの外観やレイアウトを構築する
  Widget build(BuildContext context) {
    // GestureDetector = 動的な挙動を定義する
    return GestureDetector(
      // onTapでタップしたらsetStateをインクリメントする
      onTap: () {
        print('タップされた 現在のcounter: $_count');
        setState(() {
          _count++;
        });
      },
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Center(
          child: Text(
            '$_count',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
