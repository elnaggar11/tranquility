import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/pin_code_text_field_widget.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImage(image: 'otp.png'),
              SizedBox(height: 24.h),
              Text(
                'Verification',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(right: 76.r),
                child: Text(
                  'Please enter the code sent on your phone.',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.copyWith(color: Color(0x284243AB)),
                ),
              ),
              SizedBox(height: 36.h),
              PinCodeTextFieldWidget(),
              SizedBox(height: 60.h),
              AppButton(text: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}
