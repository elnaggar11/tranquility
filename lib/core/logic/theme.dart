import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: 'tajawal',
    scaffoldBackgroundColor: Color(0xffF5F5F5),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff265355)),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Color(0xffFFFFFF),
      ),
      iconTheme: IconThemeData(color: Colors.white, size: 16.sp),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        minimumSize: WidgetStateProperty.all(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff42867B),
            fontFamily: 'tajawal',
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xffEAEDEC),
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h),
      suffixIconColor: const Color(0xff8E8EA9),
      hintStyle: TextStyle(
        color: Color(0xff265355),
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
      border: outLineInputBorder(color: Color(0xffF0E6DE)),
      enabledBorder: outLineInputBorder(color: Color(0xffF0E6DE)),
      focusedBorder: outLineInputBorder(color: Color(0xffF0E6DE)),
      errorBorder: outLineInputBorder(color: Colors.red),
      focusedErrorBorder: outLineInputBorder(color: Colors.red),
      errorStyle: const TextStyle(height: .1, fontSize: 12),
    ),
  );
}

OutlineInputBorder outLineInputBorder({
  required Color color,
  double borderRadius = 8,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(color: color),
  );
}
