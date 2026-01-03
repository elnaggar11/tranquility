import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/views/splash.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final List _list = [
    _OnboardingModel(
      image: 'onborading1.png',
      text: 'Feel Free',
      sub:
          'because I\'m the friendly chatbot here to assist you with anything you need.',
    ),
    _OnboardingModel(
      image: 'onborading2.png',
      text: 'Ask For Anything',
      sub:
          'I\'m your friendly neighborhood chatbot ready to assist you with any questions or concerns.',
    ),
    _OnboardingModel(
      image: 'onborading3.png',
      text: 'Your Secert is Save',
      sub: 'Our platform prioritizes your privacy and security',
    ),
  ];
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _list.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildOnboarding(
                  onboardingModel: _list[index],
                  index: index,
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 30.r, bottom: 30.r, left: 8.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text('Skip')),
                _buildButton(
                  onTap: () {
                    if (currentIndex == 2) {
                      navigateTo(SplashView());
                    } else {
                      controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboarding({
    required _OnboardingModel onboardingModel,
    required int index,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage(image: onboardingModel.image),
        SizedBox(height: 27.h),
        Padding(
          padding: EdgeInsets.only(left: 19.r),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: onboardingModel.text,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(text: '\n\n'),
                TextSpan(
                  text: onboardingModel.sub,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector _buildButton({required void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AppImage(image: 'arrow.svg'),
        ),
      ),
    );
  }
}

class _OnboardingModel {
  final String image;
  final String text;
  final String sub;

  _OnboardingModel({
    required this.image,
    required this.text,
    required this.sub,
  });
}
