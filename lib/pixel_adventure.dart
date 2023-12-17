import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:kiddo_tales_hub/levels/level.dart';

class PixelAdventure extends FlameGame{

Color backgroundColor() => const Color(0xff211f30); 
  late final CameraComponent cam ;
  final world = Level();
  @override
  FutureOr<void> onLoad()async {
    // Load all images into cache

    await images.loadAllImages();
cam = CameraComponent.withFixedResolution(world: world , width: 640 , height: 360);
cam.viewfinder.anchor = Anchor.topLeft;
addAll([cam, world]); 
    return super.onLoad();
  }
}