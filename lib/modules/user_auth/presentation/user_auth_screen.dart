import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swap_chat_app/core/utils/widgets/background_gradient.dart';
import 'package:swap_chat_app/modules/user_auth/logic/user_auth_logic.dart';
import 'package:swap_chat_app/modules/user_auth/presentation/widgets/app_logo_title.dart';

class UserAuthScreen extends StatelessWidget {
  const UserAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundGradient(),
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  AppLogoTitle(),
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SizedBox(
                        width: 270,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 6,
                          children: [
                            Text(
                              "Добро пожаловать",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Text(
                              "А мы вас ждали. Теперь введите ваш логин и пароль",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Логин",
                                hintText: "начните вводить ...",
                                contentPadding: EdgeInsets.all(16),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22)),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Пароль",
                                hintText: "начните вводить ...",
                                contentPadding: EdgeInsets.all(16),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(22)),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            FilledButton(
                              onPressed: () => onLoginButtonTap(context),
                              child: Text("Войти"),
                            ),
                            FilledButton.icon(
                              onPressed: onGoogleLoginButtonTap,
                              style: FilledButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  iconColor: Colors.white),
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                              ),
                              label: Text("Войти с помощью Google"),
                            ),
                            FilledButton.tonal(
                              onPressed: () => onRegisterButtonTap(context),
                              child: Text("Зарегистрироваться"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
