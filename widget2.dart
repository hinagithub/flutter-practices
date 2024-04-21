/**
  * 状態を持たないウィジェット(StatelessWidget)
  */

// パッケージインポート
import 'package:flutter/material.dart';

// エントリポイント
void main() {
//   basicWidgets();
  statelessWidget();
}

// 基本のウィジェット
void basicWidgets() {
  runApp(
    // ウィジェット① 矩形の描画
    Container(
      color: Colors.pink,
      // ウィジェット② 中央配置のレイアウト
      child: const Center(
        // ウィジェット③ テキスの描画
        child: Text(
          '基本のウィジェット',
          textDirection: TextDirection.ltr,
        ),
      ),
    ),
  );
}

// 状態を持たないウィジェット(StatelessWidget)
void statelessWidget() {
  runApp(
    const Column(children: [
      AnimalView(
        text: 'ネズミ',
        color: Colors.brown,
      ),
      AnimalView(
        text: 'トカゲ',
        color: Colors.grey,
      ),
    ]),
  );
}

class AnimalView extends StatelessWidget {
  const AnimalView({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 200,
      height: 200,
      child: Center(
        child: Text(
          text,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
