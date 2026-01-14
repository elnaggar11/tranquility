import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/views/onboarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () => navigateTo(OnboardingView(), canPop: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360.w,
          height: 360.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.r),
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tranquility',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 48.sp,
                  fontFamily: 'MySteryQuest',
                ),
              ),
              Text(
                'Together Towards Tranquility',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff284243),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
