import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stggame/stg_game.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  final game = STGGame();

  runApp(game.widget);
}
