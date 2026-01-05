import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImage(image: 'login.png'),
              SizedBox(height: 24.h),
              Text('Welcome to', style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: 6.h),
              Text(
                'Tranquility',
                style: TextStyle(
                  fontSize: 48.sp,
                  fontFamily: 'MySteryQuest',
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 10.h),
              AppInput(hintText: '01022255454'),
              SizedBox(height: 16.h),
              AppInput(
                hintText: '',
                isSuffix: true,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forget Password?'),
                ),
              ),
              SizedBox(height: 24.h),
              AppButton(isFingerPrint: true, text: 'Log In'),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ? ',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextButton(onPressed: () {}, child: Text('Sign up')),
                ],
              ),
              SizedBox(height: 24.h),

              _LoginItem(isGoogle: true),
              _LoginItem(isGoogle: false),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginItem extends StatelessWidget {
  final bool isGoogle;

  const _LoginItem({required this.isGoogle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.r),
      height: 51.h,
      decoration: BoxDecoration(
        color: isGoogle
            ? Color(0xff35B542).withValues(alpha: .5)
            : Color(0xff518EF8).withValues(alpha: .5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.r, right: 4.r),
            height: 51.h,
            width: 70.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: AppImage(image: isGoogle ? 'google.png' : 'facebook.png'),
          ),
          Text(
            isGoogle ? 'Login With Google' : 'Login With Facebook',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
