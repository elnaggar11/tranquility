import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      enableActiveFill: false,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      autoDismissKeyboard: true,
      animationType: AnimationType.scale,
      keyboardType: TextInputType.number,
      cursorColor: Colors.grey,
      backgroundColor: Colors.transparent,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        selectedFillColor: Theme.of(context).colorScheme.surface,
        activeFillColor: Theme.of(context).colorScheme.surface,
        inactiveFillColor: Theme.of(context).colorScheme.surface,
        inactiveColor: Theme.of(context).colorScheme.outline,
        selectedColor: Theme.of(context).colorScheme.outline,
        activeColor: Theme.of(context).colorScheme.outline,
        fieldHeight: 60.h,
        fieldWidth: 83.5.w,
        borderRadius: BorderRadius.circular(8.r),
        borderWidth: 1.5,
      ),
    );
  }
}
