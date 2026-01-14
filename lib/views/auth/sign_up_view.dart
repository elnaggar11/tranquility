import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/core/ui/app_upload_image.dart';
import 'package:tranquility/core/ui/appbar.dart';
import 'package:tranquility/views/auth/login_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Column(
            children: [
              AppUploadImage(),
              SizedBox(height: 24.h),
              AppInput(hintText: 'Username'),
              SizedBox(height: 16.h),
              AppInput(hintText: 'Phone Number'),
              SizedBox(height: 16.h),

              AppInput(hintText: 'Age'),
              SizedBox(height: 16.h),

              AppInput(isGenderSelection: true),
              SizedBox(height: 16.h),

              AppInput(hintText: 'password', isPassword: true),
              SizedBox(height: 16.h),

              AppInput(hintText: 'Confirm password', isPassword: true),
              SizedBox(height: 16.h),
              AppButton(
                text: 'Sign Up',
                onTap: () {
                  navigateTo(LoginView());
                },
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      navigateTo(LoginView());
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
