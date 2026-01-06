import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/appbar.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

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
              'Create New Password',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 16.h),
            Text(
              'Create your new password to log in !',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 28.h),
            AppInput(hintText: 'Password', isSuffix: true),
            SizedBox(height: 16.h),
            AppInput(
              hintText: 'Confirm Password',
              isSuffix: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 62.h),
            AppButton(text: 'Forget Password'),
          ],
        ),
      ),
    );
  }
}
