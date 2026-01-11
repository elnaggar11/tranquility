import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/appbar.dart';

class SuggestionView extends StatelessWidget {
  const SuggestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: 'Suggestions'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          children: [
            AppImage(image: 'suggest.png'),
            SizedBox(height: 16.h),
            Text(
              'Tell Us How We Can Help',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 53.h),
            AppInput(hintText: 'Subject'),
            SizedBox(height: 16.h),
            AppInput(hintText: 'body', isInputContent: true),
            SizedBox(height: 24.h),
            AppButton(text: 'Send Message'),
          ],
        ),
      ),
    );
  }
}
