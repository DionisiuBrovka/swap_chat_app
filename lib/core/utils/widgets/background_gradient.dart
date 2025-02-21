import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: AnimatedMeshGradient(
        colors: [
          Color.fromARGB(255, 49, 8, 85),
          Color.fromARGB(255, 23, 56, 124),
          Color.fromARGB(255, 195, 163, 255),
          Color.fromARGB(255, 178, 36, 97),
        ]..shuffle(),
        options: AnimatedMeshGradientOptions(
            speed: 0.03, grain: 0.2, amplitude: 7, frequency: 4),
      ),
    );
  }
}
