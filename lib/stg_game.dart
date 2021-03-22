import 'package:flame/game/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';

class STGGame extends Game with TapDetector {
  Size screen;

  @override
  void render(Canvas canvas) {
    //背景
    final bgRect = Rect.fromLTWH(0, 0, screen.width, screen.height);
    final bgPaint = Paint()..color = const Color(0xff37474f);

    canvas.drawRect(bgRect, bgPaint);
  }

  @override
  void update(double t) {}

  @override
  void resize(Size size) {
    screen = size;
    super.resize(size);
  }

  @override
  void onTapDown(TapDownDetails details) {
    debugPrint('${details.localPosition}');
    super.onTapDown(details);
  }

  @override
  void onTap() {
    debugPrint('onTap');
    super.onTap();
  }
}
