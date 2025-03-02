import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swap_chat_app/core/utils/widgets/background_gradient.dart';

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
              children: [
                UserCard(),
                Spacer(),
                Padding(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          spacing: 16,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.network(
                    width: 64,
                    height: 64,
                    "https://t4.ftcdn.net/jpg/02/34/12/57/360_F_234125704_SMg9xwLluzA4GLq46Vb5Cw9Pp0LNaUut.jpg",
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Вася Пупкин",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Какая то дополнительная информация",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
