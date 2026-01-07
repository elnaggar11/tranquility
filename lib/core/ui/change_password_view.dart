import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/appbar.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key, this.isChangefromProfile = false});
  final bool isChangefromProfile;
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
              isChangefromProfile
                  ? 'Change Your Password'
                  : 'Create New Password',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 16.h),
            isChangefromProfile
                ? SizedBox.shrink()
                : Text(
                    'Create your new password to log in !',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
            isChangefromProfile ? SizedBox.shrink() : SizedBox(height: 28.h),
            if (isChangefromProfile)
              AppInput(hintText: 'Old Password', isSuffix: true),
            isChangefromProfile ? SizedBox(height: 16.h) : SizedBox.shrink(),
            AppInput(
              hintText: isChangefromProfile ? 'New Password' : 'Password',
              isSuffix: true,
            ),
            SizedBox(height: 16.h),
            AppInput(
              hintText: isChangefromProfile
                  ? 'Confirm New Password'
                  : 'Confirm Password',
              isSuffix: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 62.h),
            AppButton(
              text: isChangefromProfile ? 'Change Password' : 'Forget Password',
            ),
          ],
        ),
      ),
    );
  }
}
