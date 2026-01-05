import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/appbar.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(image: 'forget_password.png'),
            SizedBox(height: 24.h),
            Text(
              'Forget Your Password',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 33.h),
            AppInput(hintText: 'Phone Number'),
            SizedBox(height: 33.h),
            AppButton(text: 'Forget Password'),
          ],
        ),
      ),
    );
  }
}
