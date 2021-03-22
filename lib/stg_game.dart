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

    //target
    final targetOffset = Offset(screen.width / 2, screen.height / 5);
    final targetPaint = Paint()..color = const Color(0xffff0000);
    canvas.drawCircle(targetOffset, 10, targetPaint);

    //player
    final playerOffset =
        Offset(screen.width / 2, screen.height - screen.height / 5);
    final playerPaint = Paint()..color = const Color(0xf0ffffff);
    canvas.drawCircle(playerOffset, 10, playerPaint);
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
