import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class AnimatedPlayer extends SpriteAnimationComponent
    with CollisionCallbacks, HasGameRef {

  AnimatedPlayer(
      Vector2 position,
      Vector2 size,
      ) : super(
    position: position,
    size: size,
    anchor: Anchor.center,
  );

  @override
  Future<void>? onLoad() async {
    animation = await gameRef.loadSpriteAnimation(
      'adventurer-Sheet.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.2,
        textureSize: Vector2(50, 37),
      ),
    );
    return super.onLoad();
  }
}