import 'dart:math';
import 'package:flutter/material.dart';
import 'background_painter.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Cube> cubes = [];
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1000),
    )..repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // ✅ Only generate cubes AFTER context is ready
    if (cubes.isEmpty) {
      for (int i = 0; i < 15; i++) {
        cubes.add(_generateCube());
      }
    }

    // ✅ Listen to animation
    _controller.addListener(() {
      setState(() {
        for (final cube in cubes) {
          cube.position = Offset(cube.position.dx, cube.position.dy - cube.speed);
          cube.angle += cube.rotationSpeed;

          if (cube.position.dy + cube.size < 0) {
            cubes.remove(cube);
            cubes.add(_generateCube(startFromBottom: true));
            break;
          }
        }
      });
    });
  }

  Cube _generateCube({bool startFromBottom = false}) {
    // ✅ Now MediaQuery is safe to use
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Cube(
      position: Offset(
        random.nextDouble() * screenWidth,
        startFromBottom ? screenHeight + 50 : random.nextDouble() * screenHeight,
      ),
      size: random.nextDouble() * 40 + 20,
      angle: random.nextDouble() * pi,
      speed: random.nextDouble() * 0.5 + 0.2,
      rotationSpeed: (random.nextDouble() - 0.5) * 0.02,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPainter(cubes),
      size: Size.infinite,
    );
  }
}
