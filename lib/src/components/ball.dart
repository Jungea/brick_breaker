import 'dart:ui';

import 'package:flame/components.dart';

class Ball extends CircleComponent {
  final Vector2 velocity;

  Ball({
    required this.velocity,
    required super.position,
    required double radis,
  }) : super(
            radius: radis,
            anchor: Anchor.center,
            paint: Paint()
              ..color = const Color(0xff1e6091)
              ..style = PaintingStyle.fill);

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
  }
}
