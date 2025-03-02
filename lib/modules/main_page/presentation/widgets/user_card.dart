import 'package:flutter/material.dart';

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
