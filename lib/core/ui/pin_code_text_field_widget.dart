import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      autoDismissKeyboard: true,
      animationType: AnimationType.none,
      keyboardType: TextInputType.number,

      cursorColor: Colors.grey,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,

        activeFillColor: Colors.grey,
        selectedFillColor: Colors.grey,
        inactiveFillColor: Colors.grey,
        activeColor: Colors.grey,
        selectedColor: Colors.grey,

        inactiveColor: Color(0x4042434A),
        fieldHeight: 60.h,
        fieldWidth: 83.5.w,
        borderRadius: BorderRadius.circular(8.r),
        borderWidth: 5,
      ),
    );
  }
}
