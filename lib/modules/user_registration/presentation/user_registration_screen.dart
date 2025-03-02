import 'package:flutter/material.dart';
import 'package:swap_chat_app/core/utils/widgets/background_gradient.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundGradient(),
          SafeArea(
            child: Center(
              child: Card(
                elevation: 12,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: SizedBox(
                      width: 270,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 6,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilledButton.tonalIcon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                label: Text("Назад"),
                                icon: Icon(Icons.arrow_back),
                              ),
                              Text(
                                "Регистрация",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Логин",
                              hintText: "начните вводить ...",
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Почта",
                              hintText: "начните вводить ...",
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Пароль",
                              hintText: "начните вводить ...",
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            obscureText: true,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Повторите пароль",
                              hintText: "начните вводить ...",
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 6),
                          CheckBoxPublicOffer(),
                          CheckBoxMail(),
                          SizedBox(height: 12),
                          FilledButton.icon(
                            onPressed: () {},
                            label: Text("Зарегистрироваться"),
                            icon: Icon(Icons.add_circle),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckBoxMail extends StatefulWidget {
  const CheckBoxMail({super.key});

  @override
  State<CheckBoxMail> createState() => _CheckBoxMailState();
}

class _CheckBoxMailState extends State<CheckBoxMail> {
  bool _isSelected = false;

  void changeSelection(bool? value) {
    setState(() {
      _isSelected = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Checkbox(value: _isSelected, onChanged: changeSelection),
        Flexible(
          child: Text(
            "Хочу получать новостную рассылку о важных событиях и уникальных предложениях",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

class CheckBoxPublicOffer extends StatefulWidget {
  const CheckBoxPublicOffer({super.key});

  @override
  State<CheckBoxPublicOffer> createState() => _CheckBoxPublicOfferState();
}

class _CheckBoxPublicOfferState extends State<CheckBoxPublicOffer> {
  bool _isSelected = false;

  void changeSelection(bool? value) {
    setState(() {
      _isSelected = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Checkbox(value: _isSelected, onChanged: changeSelection),
        Flexible(
          child: Text(
            "Подтверждаю что согласен с условиями обслуживания и публичной оферты. А так же прочитал политику конфиденциальности",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
