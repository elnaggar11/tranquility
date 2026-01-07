import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/appbar.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(isDrawer: true, title: 'Quotes'),
      body: Stack(
        children: [
          AppImage(
            height: double.infinity,
            width: double.infinity,
            boxFit: BoxFit.fill,

            image: 'quotes_background.jpg',
          ),
          Center(
            child: Container(
              height: 370.h,
              padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 36.r),
              decoration: BoxDecoration(
                color: Color(0xffFFFFCF).withAlpha(70),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  AppImage(image: 'quote.svg'),
                  SizedBox(height: 16.h),
                  Text(
                    '“ The only way to do great work is to love what you do “',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 16.h),

                  Text(
                    textAlign: TextAlign.end,
                    'Steve Jobs',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge!.copyWith(color: Colors.black),
                  ),
                  SizedBox(height: 16.h),

                  IconButton(
                    onPressed: () {},
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Copy',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff284243),
                          ),
                        ),
                        AppImage(image: 'copy.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
