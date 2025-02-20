import 'package:flutter/material.dart';
import 'package:swap_chat_app/modules/basic_onboarding/presentation/basic_onboarding_screen.dart';
import 'package:swap_chat_app/modules/user_registration/presentation/user_registration_screen.dart';

void onLoginButtonTap(context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BasicOnboardingScreen(),
      ));
}

void onGoogleLoginButtonTap() {}

void onRegisterButtonTap(context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserRegistrationScreen(),
      ));
}
