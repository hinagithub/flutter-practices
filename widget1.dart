/**
  * ウィジェットの基本
  */

// パッケージインポート
import 'package:flutter/material.dart';

// エントリポイント
void main() {
  basicWidgets();
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
