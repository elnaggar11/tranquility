import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/app_upload_image.dart';
import 'package:tranquility/core/ui/appbar.dart';
import 'package:tranquility/core/ui/change_password_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(isDrawer: true, title: 'Edit Profile'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            AppUploadImage(isEditProfile: true),
            SizedBox(height: 30.h),

            AppInput(hintText: 'name', keyboardType: TextInputType.name),
            SizedBox(height: 16.h),

            AppInput(
              hintText: 'Phone Number',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: AppInput(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    hintText: 'age',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(child: AppInput(isGenderSelection: true)),
              ],
            ),
            SizedBox(height: 30.h),
            AppButton(text: 'Save'),
            SizedBox(height: 20.h),
            TextButton(
              onPressed: () {
                navigateTo(ChangePasswordView(isChangefromProfile: true));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change Password',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  AppImage(image: 'edit_profile.svg', color: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
