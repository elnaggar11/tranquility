import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/appbar.dart';

class AssistantView extends StatelessWidget {
  const AssistantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      backgroundColor: Color(0xffD7DBDB),
      body: Column(
        children: [
          AppImage(image: 'assistent_chat.png'),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '        Hey!\n',
                  style: TextStyle(
                    fontSize: 50.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'I’am your Personal Assistent\n',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.r),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48.h),
                  Text(
                    'Make New Chat',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 16.h),
                  AppInput(hintText: 'Enter The Title Of Chat'),
                  SizedBox(height: 24.h),
                  AppButton(text: 'Start Chat'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
