import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/logic/theme.dart';
import 'package:tranquility/views/auth/forget_password_view.dart';
import 'package:tranquility/views/auth/new_password_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(390, 844),
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: navKey,
          theme: theme(),
          home: NewPasswordView(),
        );
      },
    );
  }
}
