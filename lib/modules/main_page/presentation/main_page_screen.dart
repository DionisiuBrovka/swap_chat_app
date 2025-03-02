import 'package:flutter/material.dart';
import 'package:swap_chat_app/core/utils/widgets/background_gradient.dart';
import 'package:swap_chat_app/modules/main_page/modules/main_reactive_button/presentation/main_reactive_button.dart';
import 'package:swap_chat_app/modules/main_page/presentation/widgets/user_card.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundGradient(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [UserCard(), Spacer(), MainReactiveButton()],
            ),
          ),
        ],
      ),
    );
  }
}
