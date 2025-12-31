import 'package:flutter/material.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/pin_code_text_field_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ccccccc')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppButton(text: 'button'),
            AppInput(isGenderSelection: true),
            AppInput(),
            AppButton(isGradient: true, text: 'fffffffff'),
            Text('gdsssssss'),
            PinCodeTextFieldWidget(),
            TextButton(onPressed: () {}, child: Text('ssssss')),
          ],
        ),
      ),
    );
  }
}
