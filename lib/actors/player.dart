import 'dart:async';

import 'package:flame/components.dart';
import 'package:kiddo_tales_hub/pixel_adventure.dart';

enum PlayerState { idle, running }

class Player extends SpriteAnimationGroupComponent
    with HasGameRef<PixelAdventure> {
String characters ;

Player({position,required this.characters}) : super(position: position);

  late final SpriteAnimation idelAnimation;
  late final SpriteAnimation runningAnimation ;

  final double stepTime = 0.05;
  @override
  FutureOr<void> onLoad() {
    _loadAllImages();
    return super.onLoad();
  }

  void _loadAllImages() {
    idelAnimation = _spriteAnimation('Idle' , 11);

    runningAnimation = _spriteAnimation('Run' , 12);
// List of all animations
    animations = {PlayerState.idle: idelAnimation,
    PlayerState.running: runningAnimation,
    }; 
// set current animantion
    current = PlayerState.running;
  }


SpriteAnimation _spriteAnimation (String state , int amount){
  // Ninja Frog
  // 12
  return  SpriteAnimation.fromFrameData(
      gameRef.images.fromCache('Main Characters/$characters/$state (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: stepTime,
        textureSize: Vector2.all(32),
      ),
    );
}

 
}
