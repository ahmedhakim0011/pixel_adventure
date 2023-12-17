import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kiddo_tales_hub/pixel_adventure.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
 Flame.device.fullScreen();
PixelAdventure game = PixelAdventure(); 
  runApp(GameWidget(game:kDebugMode ? PixelAdventure() :game));
}

