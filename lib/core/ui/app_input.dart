import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';
import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.suffixIcon,
    this.hintText,
    this.label,
    this.withCountryCode = false,
    this.isSuffix = false,
    this.textInputAction = TextInputAction.next,
  });
  final String? suffixIcon, hintText, label;
  final bool withCountryCode;
  final bool isSuffix;
  final TextInputAction textInputAction;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late int currentCuntryIndex;
  final list = [10, 20, 30, 40];
  bool isHidden = true;
  @override
  void initState() {
    currentCuntryIndex = list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Row(
        children: [
          if (widget.withCountryCode)
            Padding(
              padding: EdgeInsetsDirectional.only(end: 6.r),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).inputDecorationTheme.enabledBorder!.borderSide.color,
                  ),
                ),
                child: DropdownButton(
                  padding: EdgeInsets.symmetric(horizontal: 16.r),
                  value: currentCuntryIndex,
                  items: list
                      .map(
                        (e) =>
                            DropdownMenuItem<int>(value: e, child: Text('$e')),
                      )
                      .toList(),

                  onChanged: (value) {
                    setState(() {
                      currentCuntryIndex = value!;
                    });
                  },
                ),
              ),
            ),

          Expanded(
            child: TextFormField(
              textInputAction: widget.textInputAction,
              obscureText: isHidden && widget.isSuffix,
              decoration: InputDecoration(
                labelText: widget.label,

                hintText: widget.hintText,
                suffixIcon: widget.isSuffix
                    ? Padding(
                        padding: EdgeInsets.all(12.r),
                        child: AppImage(
                          image: 'password_view.json',
                          height: 24.h,
                          width: 24.w,

                          onLottieClicked: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                        ),
                      )
                    : widget.suffixIcon != null
                    ? AppImage(
                        image: widget.suffixIcon!,
                        boxFit: BoxFit.scaleDown,
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
