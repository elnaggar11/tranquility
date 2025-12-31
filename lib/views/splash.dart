import 'package:flutter/material.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_input.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppButton(color: Color(0xff284243), text: 'fdsa'),
            AppInput(isGenderSelection: true),
            AppInput(),
            Text('gdsssssss'),
          ],
        ),
      ),
    );
  }
}
