import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_image.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.text = '',
    this.onTap,
    this.color = Colors.red,
    this.fontSize = 16,
    this.image,
    this.verticalPadding = 20,
    this.isGradient = false,
  });
  final String text;
  final void Function()? onTap;
  final Color? color;
  final double fontSize;
  final String? image;
  final double verticalPadding;
  final bool isGradient;
  @override
  Widget build(BuildContext context) {
    if (isGradient) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: LinearGradient(
            colors: [Color(0xff5CC7A3), Color(0xff265355)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding.h),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return FilledButton(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
        onPressed: onTap,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: verticalPadding.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(image: image ?? ''),
                Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: fontSize.sp),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
