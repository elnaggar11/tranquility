import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: 'inter',
    primaryColor: Color(0xff284243),
    scaffoldBackgroundColor: Color(0xffF5F5F5),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff265355)),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.white, size: 16.sp),
    ),

    textTheme: TextTheme(
      /// bigest font in app
      headlineLarge: TextStyle(
        fontSize: 34.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xff284243),
      ),

      /// midium titles in app
      headlineMedium: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),

      /// small headline font style
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),

      /// use with headline font
      bodyLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w500,
        color: Color(0xff284243),
      ),

      /// most useage font in app
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),

      /// help titles font
      bodySmall: TextStyle(),

      /// With text button
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),

      /// lable up the button
      labelMedium: TextStyle(),

      /// the most small font style
      labelSmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: Colors.white,

        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff284243),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Color(0xff284243),
        textStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xffEAEDEC),
      contentPadding: EdgeInsets.symmetric(horizontal: 18.r, vertical: 12.r),
      suffixIconColor: const Color(0xff8E8EA9),
      hintStyle: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
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
