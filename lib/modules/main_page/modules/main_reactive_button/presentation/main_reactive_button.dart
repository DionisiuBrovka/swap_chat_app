import 'dart:developer';
import 'package:flutter/material.dart';

class MainReactiveButton extends StatelessWidget {
  const MainReactiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: SizedBox(
        width: 128,
        height: 128,
        child: ClipOval(
          child: GestureDetector(
            onTapDown: (d) {
              log("start tap");
            },
            onTapUp: (e) {
              log("tap end");
            },
            child: Material(child: Icon(Icons.mic, size: 32)),
          ),
        ),
      ),
    );
  }
}
