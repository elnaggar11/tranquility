import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/ui/app_button.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_input.dart';
import 'package:tranquility/views/home/view.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Edit Title',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: AppImage(image: 'wrong.svg'),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            AppInput(hintText: ''),
            SizedBox(height: 20.h),
            AppButton(
              text: 'Save',
              onTap: () {
                Navigator.pop(context);
                navigateTo(const HomeView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
