import 'package:flutter/material.dart';

class Cube {
  Offset position;
  double size;
  double angle;
  double speed;
  double rotationSpeed;

  Cube({
    required this.position,
    required this.size,
    required this.angle,
    required this.speed,
    required this.rotationSpeed,
  });
}

class BackgroundPainter extends CustomPainter {
  final List<Cube> cubes;

  BackgroundPainter(this.cubes);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    for (final cube in cubes) {
      canvas.save();
      canvas.translate(cube.position.dx, cube.position.dy);
      canvas.rotate(cube.angle);

      final rect = Rect.fromCenter(
        center: Offset.zero,
        width: cube.size,
        height: cube.size,
      );
      canvas.drawRect(rect, paint);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
